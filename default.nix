{ lib, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "mouse-actions";
  version = "v0.4.4";

  src = fetchFromGitHub {
    owner = "jersou";
    repo = pname;
    rev = version;
    hash = "sha256-02E4HrKIoBV3qZPVH6Tjz9Bv/mh5C8amO1Ilmd+YO5g=";
  };
  cargoHash = "sha256-GRClGC6+3J/YW5jVh7iAb2idD6/PycG854XbBIkfB/c=";
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
