# nixpkgs-bootstrapfiles

This repository contains a nix flake to build bootstrap files for nixkpgs. It contains fixes to bootstrap nixpkgs with enabled xthead extensions, which currently fails with the upstream boostrap files.

The files can be built by running `nix build .#{bootstrapTools,busybox}` in the root of the repository.
