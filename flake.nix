{
  inputs.nixpkgs.url = "nixpkgs/nixos-24.11";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.simpleFlake {
      inherit self nixpkgs;
      name = "ble-libraries";
      shell = { pkgs, ... }:
        pkgs.mkShell { buildInputs = with pkgs; [ zlib ]; };
    };
}
