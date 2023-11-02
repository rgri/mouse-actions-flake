{ lib, fetchFromGitHub, rustPlatform, pkg-config, virtualgl, xorg, libevdev }:
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
  buildInputs = [ xorg.libX11 xorg.libXi xorg.libXtst libevdev ];
  nativeBuildInputs = [ pkg-config virtualgl ];
  meta = with lib; {
    description =
      "It execute some command from mouse events such as clicks/wheel on the side/corners of the screen, or drawing shapes";
    homepage = "https://github.com/jersou/";
    license = licenses.mit;
    maintainers = [ ];
  };
}
