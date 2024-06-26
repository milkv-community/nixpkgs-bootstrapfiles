{ gccSrc, ... }:

_final: prev: {
  gcc13 = prev.lowPrio (prev.wrapCC (prev.gcc13.cc.overrideAttrs (oldAttrs: {
    src = gccSrc;
    nativeBuildInputs = oldAttrs.nativeBuildInputs ++ [ prev.buildPackages.flex ];
    patches = prev.lib.filter
      (patch: ! builtins.elem (builtins.baseNameOf patch) [
        "ICE-PR110280.patch"
      ])
      oldAttrs.patches ++
    map
      ({ rev, hash }: prev.stdenv.fetchurlBoot {
        url = "https://github.com/gcc-mirror/gcc/commit/${rev}.diff";
        inherit hash;
      })
      (import ./patches);
  })));
}
