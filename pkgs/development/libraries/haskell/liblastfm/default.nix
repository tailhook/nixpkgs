{ cabal, aeson, cereal, contravariant, cryptoApi, httpConduit
, httpTypes, network, pureMD5, semigroups, tagged, text, void
}:

cabal.mkDerivation (self: {
  pname = "liblastfm";
  version = "0.3.2.0";
  sha256 = "09xsjkwknfvdd3zb7a1qbch45ri6knkn33wl6xbi48sw5i79lxnv";
  buildDepends = [
    aeson cereal contravariant cryptoApi httpConduit httpTypes network
    pureMD5 semigroups tagged text void
  ];
  meta = {
    description = "Lastfm API interface";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})
