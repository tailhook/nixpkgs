{ stdenv, fetchurl, pythonPackages }:

pythonPackages.buildPythonPackage rec {
  name = "grin-${version}";
  version = "1.2.1";

  src = fetchurl rec {
    url = "http://pypi.python.org/packages/source/g/grin/grin-${version}.tar.gz";
    md5 = "d894426dfbf70bc105388c2a51348199";
    #sha256 = "0415njniqpy3xhvibpm82i9alrp2fw3lsnm15h7vqkkvgp8s5g39";
  };

  buildInputs = [ pythonPackages.nose ];

  patchPhase = ''
    sed -i "/argparse/D" setup.py
  '';

  meta = {
    homepage = http://pypi.python.org/grin;
    description = "A grep program configured the way I like it";
  };
}
