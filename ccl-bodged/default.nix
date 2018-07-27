with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "ccl-bodged-1.0.0";
  builder = ./builder.sh;
  ccl = pkgs.ccl;
  libPath = lib.makeLibraryPath [ libGL
                                  xorg.libXxf86vm
                                  xorg.libX11
                                  xorg.libxcb
                                  xorg.libXinerama
                                  xorg.libXcursor
                                  xorg.libXrandr ];
}
