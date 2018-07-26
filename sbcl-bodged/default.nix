with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "sbcl-bodged-1.0.0";
  builder = ./builder.sh;
  sbcl = pkgs.sbcl;
  libPath = lib.makeLibraryPath [ libGL
                                  xorg.libXxf86vm
                                  xorg.libX11
                                  xorg.libxcb
                                  xorg.libXinerama
                                  xorg.libXcursor
                                  xorg.libXrandr ];
}
