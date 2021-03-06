{ cabal }:

cabal.mkDerivation (self: {
  pname = "permutation";
  version = "0.5.0.4";
  sha256 = "0kl5yw1as2y8yf2ac2f6v7g8k7mzjqw5fdh18a6m3jfhjw9rcqf7";
  doCheck = false;
  meta = {
    homepage = "https://github.com/spacekitteh/permutation";
    description = "A library for permutations and combinations";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
