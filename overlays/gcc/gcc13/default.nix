{ gccSrc, ... }:

_final: prev: {
  gcc13 = prev.lowPrio (prev.wrapCC (prev.gcc13.cc.overrideAttrs (oldAttrs: {
    src = gccSrc;
    nativeBuildInputs = oldAttrs.nativeBuildInputs ++ [ prev.buildPackages.flex ];
    patches = prev.lib.filter
      (patch: !prev.lib.hasSuffix "ICE-PR110280.patch" (builtins.baseNameOf patch))
      oldAttrs.patches ++
    map prev.stdenv.fetchurlBoot (import ./patches);
  })));
}