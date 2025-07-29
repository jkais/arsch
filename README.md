# Install
- Boot from Archlinux install medium
- ``loadkeys de-latin1``
- Use iwctl
  - station wlan0 scan
  - station wlan0 connect <tab>
- Use archinstall
  - Locales
    - Keyboard layout: de
    - Locale language: de_DE.UTF-8
  - Mirrors & Repositories+
    - Select regions -> Germany
  - Disk configuration
    - Partitioning
      - Use best-effort
      - Mark the drive
      - btrfs
      - subvolumes with default...? Yes
      - Use compression
      - Disk encryption
        - Encryption type > LUKS
        - Encryption password: Set it & don't forget it
        - Partitions > Mark the one
  - Root password: Set it
  - User account
    - Add a user
      - name (lowercase), password
      - Should "user" be a superuser (sudo)? > Yes
    - Confirm and exit
  - Audio > pipewire
  - Network configuration > Copy ISO...
  - Additional packages > wget
  - Timezone: /Berlin
  - Install

```wget -qO- https://arsch.n1h0n.de | bash```

# Hyprland

- hypr-zoom

## Hasui Colors

- Dark Red: #BF414C
- Light Red: #D98F89
- Dark Green: #2E4036
- Light Green: #557362
- Beige: #BFAC95

## Urban Night

- #1e1e2e
- #cdd6f4
- #89b4fa
- #f38ba8
- #fab387
- #a6e3a1
- #313244

## Tokyo Tower Night

- Orange: #yiwE95F2C
- Night: #121E3F
- Violet: #6D4F8D
- Yellow: #DF9F49

# Debugging

- ```GTK_DEBUG=interactive waybar```

# Todo

- Monitor-Setting
- Multi-Monitor Setup
- Resolution + Font-Size
- Secrets
- Multi Clipboard
  - hyprshot to use clipboard

- configure mako or test other notification systems

- hypridle: Remember brightness and reset
- Booting with Plymouth

- Go through https://wiki.hypr.land/Hypr-Ecosystem/

- Improve WebApps script

- Waybar
  - Make cava run
  - Weather script?

- Pacman
  - ILoveCandy in pacman.conf sedden


- Themes
  - Mokuhankan Collection?

# Shortcuts

# Applications

# Work
- Waydroid
- Add customizable script to waybar
  - exec-once = [workspace 0 silent] slack
