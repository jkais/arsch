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
  - Mirrors & Repositories
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

## Urban Night

- #1e1e2e
- #cdd6f4
- #89b4fa
- #f38ba8
- #fab387
- #a6e3a1
- #313244

## Tokyo Tower Night

- Orange: #E95F2C
- Night: #121E3F
- Violet: #6D4F8D
- Yellow: #DF9F49

# Debugging

- ```GTK_DEBUG=interactive waybar```

# Todo

- Secrets
- hyprshot to use clipboard

- configure mako or test other notification systems

- hypridle: Remember brightness and reset
- Booting with Plymouth

- Go through https://wiki.hypr.land/Hypr-Ecosystem/

- Waybar
  - Make cava run
  - Weather script?

- Themes
  - Mokuhankan Collection?

# Shortcuts

# Applications

# Work
- Waydroid
- Add customizable script to waybar
  - exec-once = [workspace 0 silent] slack
