{
  description = "This flake provides bootstrap files with applies fixes for xthead extensions.";

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
      treefmtEval = eachSystem (system: treefmt-nix.lib.evalModule nixpkgs.legacyPackages.${system} ./treefmt.nix);
    in
    {
      formatter = eachSystem (system: treefmtEval.${system}.config.build.wrapper);

      checks = eachSystem (system: {
        formatting = treefmtEval.${system}.config.build.check self;
      });

      packages = eachSystem (system:
        let
          pkgs = import nixpkgs {
            inherit crossSystem system;
            overlays = [ (import ./gcc13-overlay.nix gcc13-git) ];
          };
          make = import "${nixpkgs}/pkgs/stdenv/linux/make-bootstrap-tools.nix" {
            inherit pkgs;
          };
        in
        make.bootstrapFiles
      );
    };
}
