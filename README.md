## What I'm using 使
- **Window Manager** • [Hyprland](https://github.com/hyprwm/Hyprland) A tiling Wayland compositor that doesn't sacrifice on its looks 🪟
- **Shell** • [Bash](https://www.youtube.com/watch?v=I4EWvMFj37g) With [Oh-My-Posh](https://ohmyposh.dev/), a custom prompt engine for almost any shell 🐚
- **Terminal** • [Foot](https://codeberg.org/dnkl/foot) A fast, lightweight and customizable terminal 💻
- **Panel** • [Waybar](https://aur.archlinux.org/packages/waybar-hyprland-git) Highly customizable Wayland bar, now with workspaces support for Hyprland 📊
- **Notify Daemon** • [Mako](https://github.com/emersion/mako) A lightweight notification daemon 📣
- **Launcher** • [Rofi](https://github.com/davatorium/rofi) A window switcher, application launcher and dmenu replacement 🔍
- **File Manager** • [Thunar](https://github.com/xfce-mirror/thunar) A modern file manager designed from the ground up to be fast and easy to use 📁
- **Wallpaper** • [Swww](https://github.com/Horus645/swww) A solution to Wayland wallpaper woes 🌄

And a lot of other stuff like: pfetch, cava, btop, htop, wlogout, swaylock and more.

## Preview 目

<img align="center" src="/assets/preview.png">
<img align="center" src="/assets/preview2.png">
<img align="center" src="/assets/preview3.png">

## Tree of files 木

```bash
~
├── .config
│   ├── btop
│   ├── cava
│   ├── foot
│   ├── htop
│   ├── hypr
│   │   ├── configs
│   │   ├── mako
│   │   ├── rofi
│   │   ├── scripts
│   │   ├── swaylock
│   │   ├── themes
│   │   ├── waybar
│   │   └── hyprland.conf
│   ├── nwg-look
│   ├── squiid
│   ├── Thunar
│   └── wlogout
└── Pictures
    └── wallpapers
```
## Installation 装 !Not tested on a freshly installed distro!
#### Warning: This installation is meant for nvidia, if you don't have nvidia, you'll need to edit the ENVariables.conf and comment out the nvidia part (it's just a few lines).
#### Also, I heavilly reccomend the use of all the dotfiles, as using only some part may break something (for example, if you only install the waybar config, the power button won't work as it plays a script in the hypr folder that activates wlogout so you need all of those)
I reckon that you already have a working hyprland installation (configured for nvidia if on nvidia) with an aur helper (yay, paru or other).

Update your system (I'm using paru but use your aur helper) with ```paru -Syu```

(For nvidia only) If you're on nvidia install theese packages:

```
paru -S nvidia-dkms nvidia-settings nvidia-utils libva libva-nvidia-driver-git
```

(For everyone) Now you'll need to install all the packages:

```
paru -S foot swaybg swayidle swaylock-effects rofi wlogout mako grim slurp wl-clipboard cliphist swappy polkit-kde-agent nwg-look swww mousepad pipewire-alsa playerctl qt5ct htop btop squiid nvtop jq gvfs gvfs-mtp ffmpegthumbs mpv python-requests pamixer wlsunset brightnessctl xdg-user-dirs network-manager-applet nano cava pavucontrol otf-font-awesome ttf-jetbrains-mono-nerd ttf-jetbrains-mono otf-font-awesome-4 ttf-droid ttf-fantasque-sans-mono adobe-source-code-pro-fonts noto-fonts-emoji waybar catppuccin-gtk-theme-mocha catppuccin-gtk-theme-latte catppuccin-cursors-mocha ttf-meslo-nerd
```

Then clone this branch of the repo and copy the content of "files" to your home directory
```
git clone https://github.com/liveslol/dotfiles.git --branch Blueland
cd dotfiles
sudo cp -r ./files/* ~
sudo cp -r ./files/.[^.]* ~
```

You'll also need to set the Catppuccin-Mocha-Standard-Blue-Dark gtk theme and Shiny-Dark-Icons icon theme in nwg-look and use the [catppuccin rofi theme script](https://github.com/catppuccin/rofi/tree/main/basic)
Now just restart the pc after doing so and you're good to go!

## After install 後
To get the best expirience, as this theme is catppuccin themed, you can go to the [catppuccin repo](https://github.com/catppuccin/catppuccin) and theme your apps so they fit in!
Important keybinds here ⇩ (you can look at all of them in ~/.config/hypr/configs/Keybinds.conf)
```
---------------------------------------------------------------------------------
| Super+Enter       | Open terminal                                             |
| Super+D           | Open rofi                                                 |
| Super+Q           | Kill focused window                                       |
| Super+Up          | Switch focus to the upper window                          |
| Super+Down        | Switch focus to the lower window                          |
| Super+Left        | Switch focus to the window on the left                    |
| Super+Right       | Switch focus to the window on the right                   |
| Super+Shift+Up    | Resize the window a little up                             |
| Super+Shift+Down  | Resize the window a little down                           |
| Super+Shift+Left  | Resize the window a little left                           |
| Super+Shift+Right | Resize the window a little right                          |
| Super+Ctrl+Up     | Move the window up                                        |
| Super+Ctrl+Down   | Move the window down                                      |
| Super+Ctrl+Left   | Move the window left                                      |
| Super+Ctrl+Right  | Move the window right                                     |
| Super+1-9         | Switch to workspace from 1 to 9                           |
| Super+Ctrl+1-9    | Move the window to a workspace from 1 to 9                |
| Super+Shift+1-9   | Move the window to a workspace from 1 to 9 silently       |
| Super+F           | Toggle fullscreen                                         |
| Super+T           | Open thunar                                               |
| Ctrl+Alt+L        | Lockscreen                                                |
| Super+W           | Change to a random wallpaper (from ~/Pictures/wallpapers) |
| Super+Ctrl+W      | Select a wallpaper (from ~/Pictures/wallpapers)           |
| Super+B           | Toggle waybar                                             |
| Super+Space       | Change layout (Master / Dwindle)                          |
| Super+Shift+Space | Toggle floating window                                    |
| Super+Shift+S     | Screenshot with swappy                                    |
---------------------------------------------------------------------------------
```

If you like this rice, please consider starring ⭐

Credits: The scripts are from JaKooLits Hyprland-v3 rice. Thanks 💾
