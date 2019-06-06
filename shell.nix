{ pkgs ? import <nixpkgs> {}, ghc ? pkgs.ghc }:
with pkgs;
  mkShell {
  inherit ghc;
  shellHook = ''
  export LD_LIBRARY_PATH="${pkgs.zlib}/lib"
  '';
  buildInputs = [ zlib ];
}
