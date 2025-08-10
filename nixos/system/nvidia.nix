{ config, pkgs, ... }:

{

  
  nixpkgs.config.allowUnfree = true;
  
  services.xserver.enable = true;
  services.xserver.videoDrivers = [ "nvidia" ]; # Will still handle Intel via modesetting
  hardware.opengl.enable = true;

  # NVIDIA-specific
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false; # Optional: suspend/resume
    powerManagement.finegrained = false;
    open = false; # GTX 1660 Ti needs proprietary driver
    nvidiaPersistenced = true;
    nvidiaSettings = true;
    prime = {
      offload.enable = true;
      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:1:0:0";
    };
  };

  # Optional: Vulkan
  hardware.opengl.extraPackages = with pkgs; [
    vulkan-loader
    vulkan-tools
    vulkan-validation-layers
  ];

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
  };

  
}

