## What I'm using 使
- **Window Manager** • [Hyprland](https://github.com/hyprwm/Hyprland) A tiling Wayland compositor that doesn't sacrifice on its looks 🪟
- **Shell** • [Bash](https://www.youtube.com/watch?v=I4EWvMFj37g) With Oh-My-Posh, a custom prompt engine for almost any shell 🐚
- **Terminal** • [Foot](https://codeberg.org/dnkl/foot) A fast, lightweight and customizable terminal 💻
- **Panel** • [Waybar](https://aur.archlinux.org/packages/waybar-hyprland-git) Highly customizable Wayland bar, now with workspaces support for Hyprland 📊
- **Notify Daemon** • [Mako](https://github.com/emersion/mako) A lightweight notification daemon 📣
- **Launcher** • [Rofi](https://github.com/davatorium/rofi) A window switcher, application launcher and dmenu replacement 🔍
- **File Manager** • [Thunar](https://github.com/xfce-mirror/thunar) A modern file manager designed from the ground up to be fast and easy to use 📁
- **Wallpaper** • [Swww](https://github.com/Horus645/swww) A solution to Wayland wallpaper woes 🌄
And a lot of ther stuff like: pfetch, cava, btop, htop, wlogout, swaylock and more.

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
## Installation 装
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
paru -S foot swaybg swayidle swaylock-effects wofi wlogout mako grim slurp wl-clipboard cliphist swappy polkit-kde-agent nwg-look-bin swww mousepad pipewire-alsa playerctl qt5ct btop nvtop jq gvfs gvfs-mtp ffmpegthumbs mpv python-requests pamixer wlsunset brightnessctl xdg-user-dirs viewnior network-manager-applet nano cava pavucontrol otf-font-awesome ttf-jetbrains-mono-nerd ttf-jetbrains-mono otf-font-awesome-4 ttf-droid ttf-fantasque-sans-mono adobe-source-code-pro-fonts noto-fonts-emoji waybar-hyprland-git
```

Then clone this branch of the repo and copy the content of "files" to your home directory
```
git clone https://github.com/notbluie/dotfiles.git --branch Blueland
cd dotfiles
sudo cp -r ./files/* ~
```
You'll need to restart the pc after doing so and you're good to go!

Credits: The scripts are from JaKooLits Hyprland-v3 rice and his wonderful bash skills. Thanks <
