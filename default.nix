{ pkgs ? import <nixpkgs> { } }:

{
  config = {
    allowUnfreePredicate = pkg: builtins.elem (pkgs.lib.getName pkg) [
       "checkra1n"
    ];
  };

  palera1n = pkgs.callPackage ./pkgs/palera1n { };
}
