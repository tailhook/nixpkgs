{ cabal, binary, filepath, mtl, syb, utf8String }:

cabal.mkDerivation (self: {
  pname = "protocol-buffers";
  version = "2.0.14";
  sha256 = "1wihnpvc7kjq345a6v702s42gmrqd9cjm50safc7kigyvhr5vm1i";
  buildDepends = [ binary filepath mtl syb utf8String ];
  meta = {
    homepage = "http://code.haskell.org/protocol-buffers/";
    description = "Parse Google Protocol Buffer specifications";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
