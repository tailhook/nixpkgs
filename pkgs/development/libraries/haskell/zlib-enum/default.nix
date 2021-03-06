{ cabal, enumerator, transformers, zlibBindings }:

cabal.mkDerivation (self: {
  pname = "zlib-enum";
  version = "0.2.3.1";
  sha256 = "1nfczminxafzk69ry1sqkj1ha0jlv3l9ak10yk205snfhpmcjgg4";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [ enumerator transformers zlibBindings ];
  meta = {
    homepage = "http://github.com/maltem/zlib-enum";
    description = "Enumerator interface for zlib compression";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
