{ cabal, filepath, mtl, pem, time, x509, x509Store }:

cabal.mkDerivation (self: {
  pname = "x509-system";
  version = "1.4.5";
  sha256 = "0pwn624n6fagg9rw2p09x2k212rc8167jhqz6z5wf6m7y56ql28x";
  buildDepends = [ filepath mtl pem time x509 x509Store ];
  meta = {
    homepage = "http://github.com/vincenthz/hs-certificate";
    description = "Handle per-operating-system X.509 accessors and storage";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
