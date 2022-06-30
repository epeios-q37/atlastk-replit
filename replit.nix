{ pkgs }: {
    deps = [
      pkgs.bashInteractive
      pkgs.gnome.zenity
      pkgs.xdg-utils
      pkgs.firefox
      pkgs.zulu
      pkgs.nodejs
      pkgs.python3
      pkgs.ruby
    ];
}