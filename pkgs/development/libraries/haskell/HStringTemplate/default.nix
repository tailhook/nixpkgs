{ cabal, blazeBuilder, deepseq, filepath, mtl, parsec, syb, text
, time, utf8String, void
}:

cabal.mkDerivation (self: {
  pname = "HStringTemplate";
  version = "0.7.3";
  sha256 = "1gw4v16nk0878qplcx6by2bl4280lwyn9a252p6ldaqlbk9vygw8";
  buildDepends = [
    blazeBuilder deepseq filepath mtl parsec syb text time utf8String
    void
  ];
  meta = {
    description = "StringTemplate implementation in Haskell";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
