{
  lib,
  fetchFromGitHub,
  rustPlatform,
  git,
}:
rustPlatform.buildRustPackage rec {
  pname = "nbted";
  version = "1.5.0";

  nativeBuildInputs = [git];

  src = fetchFromGitHub {
    owner = "C4K3";
    repo = pname;
    rev = version;
    hash = "sha256-5gCxTFjI3WDC9+F9i4I2g17+wHWnQHjC4Hurj5CMhB4=";
  };

  cargoHash = "sha256-eM5+UM3g463UzXejlWWyB/qO/oZ99earZLntQE+Ms8s=";

  meta = {
    mainProgram = "nbted";
    description = "Command-line NBT editor";
    homepage = "https://github.com/C4K3/nbted";
    license = lib.licenses.cc0;
    maintainers = with lib.maintainers; [michailik];
  };
}
