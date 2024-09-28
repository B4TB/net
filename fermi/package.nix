{ stdenv, ghc }:

stdenv.mkDerivation {
  pname = "fermi";
  version = "1.0.0";

  src = ./.;

  buildInputs = [ ghc ];

  buildPhase = ''
    ghc -O2 -dynamic fermi.hs -o fermi
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp fermi $out/bin
  '';
}