{ stdenv, fetchgit, python, pkgconfig, cairo, x11 }:

stdenv.mkDerivation rec {
  version = if python.is_py3k or false then "5a45b0b" else "2f1f378";
  name = "pycairo-git-${version}";
  src = if python.is_py3k or false
    then fetchgit {
      url = "git://anongit.freedesktop.org/pycairo";
      rev = "${version}";
      sha256 = "0w1559wff7bx5zy09wx2i0jrly72xiyml76vags6b69jwvy3s35i";
    }
    else fetchgit {
      url = "git://anongit.freedesktop.org/py2cairo";
      rev = "${version}";
      sha256 = "unknown";
    };

  buildInputs = [ python pkgconfig cairo x11 ];
  preConfigure = ''
    sed -e 's@#!/usr/bin/env python@#!${python.executable}@' -i waf
    head waf
  '';
  configurePhase = "${python.executable} waf configure --prefix=$out";
  buildPhase = "${python.executable} waf";
  installPhase = "${python.executable} waf install";
}
