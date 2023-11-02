{ lib, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "mouse-actions";
  version = "0.4.4";

  src = fetchFromGitHub {
    owner = "jersou";
    repo = pname;
    rev = version;
    hash = lib.fakeHash;
  };
  cargoHash = lib.fakeHash;

  meta = with lib; {
    # TODO: better description
    description =
      "A way to execute some commands from mouse events, a mix between Easystroke and Comiz edge commands";
    homepage = "https://github.com/BurntSushi/ripgrep";
    # TODO: license
    license = licenses.unlicense;
    # TODO: how to add myself as a maintainer? (rgri)
    maintainers = [ ];
  };
}
