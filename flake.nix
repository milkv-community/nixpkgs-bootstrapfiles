{
  description = "This flake provides bootstrap files with applied fixes for xthead extensions.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/master";
    gcc13-git = {
      url = "git://gcc.gnu.org/git/gcc.git?ref=releases/gcc-13";
      flake = false;
    };
    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, systems, gcc13-git, treefmt-nix, ... }:
    let
      crossSystem = "riscv64-linux";
      eachSystem = nixpkgs.lib.genAttrs (import systems);
      eachSystemPkgs = overrides: f: eachSystem (system:
        let
          pkgs = import nixpkgs ({ inherit system; } // overrides);
        in
        f pkgs);
      treefmtEval = eachSystem (system: treefmt-nix.lib.evalModule nixpkgs.legacyPackages.${system} ./treefmt.nix);
    in
    {
      formatter = eachSystem (system: treefmtEval.${system}.config.build.wrapper);

      checks = eachSystem (system: {
        formatting = treefmtEval.${system}.config.build.check self;
      });

      overlays = {
        default = nixpkgs.lib.composeManyExtensions [
          self.overlays.gcc13
        ];
        gcc13 = import ./overlays/gcc/gcc13 {
          gccSrc = gcc13-git;
        };
      };

      packages = eachSystemPkgs
        {
          inherit crossSystem;
          overlays = [ self.overlays.default ];
        }
        (pkgs: (import "${nixpkgs}/pkgs/stdenv/linux/make-bootstrap-tools.nix" {
          inherit pkgs;
        }).bootstrapFiles);
    };
}
