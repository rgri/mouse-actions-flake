{ config, lib, pkgs, mouse-actions, ... }:

with lib;

let cfg = config.programs.mouse-actions;

in {
  options = {
    programs.mouse-actions.enable = mkEnableOption (lib.mdDoc ''
      Enable mouse-actions and udev rules.
      This is a prerequisite to using mouse-actions without being root.'');
  };
  config = mkIf cfg.enable {
    environment.systemPackages = [ mouse-actions ];
    services.udev.packages = [ mouse-actions ];
  };
}
