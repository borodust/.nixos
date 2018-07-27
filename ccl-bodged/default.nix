with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "ccl-bodged-1.0.0";
  builder = ../bodge-builder.sh;
  appName = "ccl";
  appPath = lib.concatStrings [ pkgs.ccl "/bin/ccl" ];
  libPath = lib.makeLibraryPath [ pkgs.libGL
                                  pkgs.pulseaudio
                                  xorg.libXxf86vm
                                  xorg.libX11
                                  xorg.libxcb
                                  xorg.libXinerama
                                  xorg.libXcursor
                                  xorg.libXrandr ];
}
