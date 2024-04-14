{
  description = "This flake provides bootstrap files with applies fixes for xthead extensions.";

  inputs = {
    gcc13-git.flake = false;
    gcc13-git.url = "git://gcc.gnu.org/git/gcc.git?ref=releases/gcc-13";
    nixpkgs.url = "github:nixos/nixpkgs/master";
  };

  outputs = { nixpkgs, systems, gcc13-git, ... }:
    let
      crossSystem = "riscv64-linux";
      eachSystem = nixpkgs.lib.genAttrs (import systems);
    in
    {
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
