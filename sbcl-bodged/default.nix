with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "sbcl-bodged-1.0.0";
  builder = ../bodge-builder.sh;
  appName = "sbcl";
  appPath = lib.concatStrings [ pkgs.sbcl "/bin/sbcl" ];
  libPath = lib.makeLibraryPath [ pkgs.zlib
                                  pkgs.libGL
                                  pkgs.pulseaudio
                                  xorg.libXxf86vm
                                  xorg.libX11
                                  xorg.libxcb
                                  xorg.libXinerama
                                  xorg.libXcursor
                                  xorg.libXrandr ];
}
