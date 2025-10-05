{ config, libs, pkgs, ... }:

{
  boot.kernelParams = [ "nvidia-drm.modeset=1" ];
  boot.loader = {
    efi.canTouchEfiVariables = true;
    systemd-boot.enable = true;
  };

  boot.kernelModules = [
    "kvm_intel"      # Intel virtualization support
    "kvm"            # Core KVM module (usually auto-loaded, but good to be explicit)
    "iptable_nat"    # Needed for NAT in Docker
    "nf_nat"         # Netfilter NAT
    "ip_tables"      # Required by Docker networking
  ];

}
