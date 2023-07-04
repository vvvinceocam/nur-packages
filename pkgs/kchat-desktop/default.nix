let
  version = "2.1.0";
in 
{ pkgs ? import <nixpkgs> {} }:

pkgs.appimageTools.wrapType2 {
  name = "kchat-desktop";
  src = pkgs.fetchurl {
    url = "https://download.storage5.infomaniak.com/kchat/kchat-desktop-${version}-linux-x86_64.AppImage";
    sha256 = "1b36926f41507fba78ce2373ac7d3b01f21923ca317f0dc99d1f8a29ecdf7d07";
  };
  extraPkgs = pkgs: with pkgs; [];
}
