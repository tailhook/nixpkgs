{ fetchgit, python33Packages }:

python33Packages.buildPythonPackage rec {
  version = "8f00451";
  name = "zorro-${version}";
  namePrefix = "";

  src = fetchgit {
    url = "git://github.com/tailhook/zorro";
    sha256 = "1fkbcnv9gypay3gbl5f5jz91wpcz774z7f8k3261ns1axy7nxawp";
  };

  propagatedBuildInputs = [ python33Packages.greenlet ];

  meta = {
    homepage = http://github.com/tailhook/zorro;
    description = "Network communication library based on greenlets";
  };
}
