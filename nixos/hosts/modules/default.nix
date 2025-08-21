let
  files = builtins.attrNames (builtins.readDir ./.);
  nixFiles = builtins.filter
    (f: builtins.match ".*\\.nix$" f != null && f != "default.nix")
    files;
in
map (f: import (./. + "/${f}")) nixFiles

