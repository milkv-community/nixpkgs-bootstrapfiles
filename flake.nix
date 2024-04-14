{
  description = "This flake provides bootstrap files with applies fixes for xthead extensions.";

  inputs = {
    gcc13-git.flake = false;
    gcc13-git.url = "git://gcc.gnu.org/git/gcc.git?ref=releases/gcc-13";
    nixpkgs.url = "github:nixos/nixpkgs/master";
  };

  outputs = { gcc13-git, nixpkgs, ... }:
    let
      inherit (nixpkgs) lib;

      # The platforms *from* which release-cross.nix compiles.
      supportedSystems = [ "x86_64-linux" "x86_64-darwin" "aarch64-linux" ];
      forAllSystems = lib.genAttrs supportedSystems;
      crossSystem = "riscv64-linux";
    in
    {
      packages = forAllSystems (system:
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
