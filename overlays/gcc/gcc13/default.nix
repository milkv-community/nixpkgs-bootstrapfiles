{ gccSrc, ... }:

_final: prev: {
  xthead = prev.xthead or { } // {
    gcc13 = prev.lowPrio (prev.wrapCC (prev.gcc13.cc.overrideAttrs (oldAttrs: {
      src = gccSrc;
      nativeBuildInputs = oldAttrs.nativeBuildInputs ++ [ prev.buildPackages.flex ];
      patches = prev.lib.filter
        (patch: ! builtins.elem (builtins.baseNameOf patch) [
          "ICE-PR110280.patch"
        ])
        oldAttrs.patches ++
      map prev.stdenv.fetchurlBoot (import ./patches);
    })));
  };
}
