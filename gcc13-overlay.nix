src: self: super: {
  gcc13 = super.lowPrio (super.wrapCC (super.gcc13.cc.overrideAttrs (oldAttrs: {
    inherit src;
    nativeBuildInputs = oldAttrs.nativeBuildInputs ++ [ super.buildPackages.flex ];
    patches = super.lib.filter
      (patch: !super.lib.hasSuffix "ICE-PR110280.patch" (builtins.baseNameOf patch))
      oldAttrs.patches ++
    map super.stdenv.fetchurlBoot (import ./gcc13-patches.nix);
  })));
}
