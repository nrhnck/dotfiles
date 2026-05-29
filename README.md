# nrhnck's dotfiles
> A productive Arch linux hyprland laptop configuration

<img width="1919" height="1079" alt="HYPRLAND" src="https://github.com/user-attachments/assets/023396fb-e5b1-4f8e-9bdb-3275cda4c290" />
<img width="1919" height="1076" alt="screenshot_1780068554" src="https://github.com/user-attachments/assets/7bf26ffd-b40b-4a1a-8567-44ffa036a225" />
<img width="1627" height="750" alt="screenshot_1780063402" src="https://github.com/user-attachments/assets/829c420a-69ce-47b2-883b-47bc956db3d6" />

---

## 📖 Overview
This setup is my daily driver for school and development. It focuses on a clean aesthetic that stays out of the way while providing all the tools needed for a modern Linux workflow.
Heavily inspired by [this rice](https://github.com/genta-bahana-nagari/hyprland-rice)
I tried to keep it minimal and aesthetic at the same time. Hope you enjoy it :)

## 🛠️ Pre reqs
These are the prerequisites needed to run this rice:

| Category | Component |
| :--- | :--- |
| **window manager** | [Hyprland](https://hyprland.org/) |
| **terminal** | [kitty](https://sw.kovidgoyal.net/kitty/) |
| **browser** | [firefox](https://www.firefox.com/en-US/) |
| **file manager** | [thunar](https://wiki.archlinux.org/title/Thunar) |
| **app launcher** | [fuzzel](https://codeberg.org/dnkl/fuzzel) |
| **status bar** | [waybar](https://github.com/alexays/waybar) |
| **wallpaper** | [waypaper](https://github.com/anufrievroman/waypaper) |
| **notifications** | [swaync](https://github.com/ErikReider/SwayNotificationCenter) |
| **screenshots** | [grim](https://github.com/emersion/grim)| + [slurp](https://github.com/emersion/slurp)|

### ➕ Additional Dependencies
* **network gui:** [nmgui](https://github.com/s-adi-dev/nmgui)
* **logout menu:** [wlogout](https://github.com/ArtsyMacaw/wlogout)
* **Alt/Tab menu:** [snappy-switcher](https://github.com/OpalAayan/snappy-switcher)
* **shell:** [oh-my-zsh](https://ohmyz.sh/#install)

---

## 🚀 Getting Started

### 1. Prerequisites
Ensure you are on **Arch Linux** and have a helper like `yay` or `paru` installed to grab any missing AUR packages.

### 2. Installation
BACK UP YOUR CONFIG!

```bash
# Clone the repository
git clone [https://github.com/nrhnck/dotfiles.git](https://github.com/nrhnck/dotfiles.git)
cd dotfiles

# Example: Symlinking a config (Adjust based on your folder structure)
ln -s ~/dotfiles/hypr ~/.config/hypr
