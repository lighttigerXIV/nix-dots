{ ... }:

{
  # Set Hostname
  networking.hostName = "lt14-nixos";

  # Enable Network Manager
  networking.networkmanager.enable = true;

  # Enable bluetooth
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
  services.blueman.enable = true;

  # Enable pipewire
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Disable pulseaudio
  hardware.pulseaudio.enable = false;
}
