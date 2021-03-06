{ cabal }:

cabal.mkDerivation (self: {
  pname = "smtLib";
  version = "1.0.7";
  sha256 = "1jn2790x7g7n6jm5cfgd692n3l6iafyv0zyz40hx8ykcs4jh2rkf";
  meta = {
    description = "A library for working with the SMTLIB format";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.thoughtpolice ];
  };
})
