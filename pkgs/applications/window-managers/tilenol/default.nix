{ fetchgit, python33Packages, xlibs, pkgs }:

python33Packages.buildPythonPackage rec {
  version = "93ce7d9";
  name = "tilenol-${version}";
  namePrefix = "";

  src = fetchgit {
    url = "git://github.com/tailhook/tilenol";
    sha256 = "1gcx15yh56b94wck2jrslq2vzgy22fz9l8b4ilncwhxridn22v07";
  };

  propagatedBuildInputs = [
    python33Packages.pycairo-git
    python33Packages.zorro
    python33Packages.pyyaml
    xlibs.xcbproto
    xlibs.xproto
    pkgs.vistafonts
  ];

  postInstall = ''
    wrapProgram $out/bin/runtilenol \
        --prefix XDG_DATA_DIRS : ${xlibs.xcbproto}/share \
        --prefix XPROTO_DIR : ${xlibs.xproto}/include/X11
  '';


  meta = {
    homepage = http://github.com/tailhook/tilenol;
    description = "Yet another tiling window manager";
  };
}
