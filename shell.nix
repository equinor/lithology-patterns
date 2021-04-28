/**
* Nix is used as an alternative to popular package managers of linux
* distributions, or as an alternative to Homebrew.
*
* The project does NOT depend on Nix or NixOS and `shell.nix` is
* effectively ignored if the system you are running does NOT use Nix
* or NixOS.
* Anyone who uses Nix as a package manager is able to run
* `shell.nix` to set up the project specific development environment
* without polluting the overall system with project specific
* packages.
*
* A couple links if you are interested in learning more about Nix:
* - https://nixos.org/guides/dev-environment.html
* - https://github.com/uniphil/nix-for-devs
* - https://wickedchicken.github.io/post/macos-nix-setup/
*/

{ pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
  buildInputs = [
    nodejs-14_x
  ];
  shellHook = ''
    export PATH="$PWD/node_modules/.bin/:$PATH"
  '';
}
