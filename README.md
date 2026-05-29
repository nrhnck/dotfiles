# ❄️ Dotfiles: The Student Setup
> A highly productive Arch Linux + Hyprland environment tailored for deep work, study sessions, and seamless multitasking.

<img width="1919" height="1079" alt="HYPRLAND" src="https://github.com/user-attachments/assets/023396fb-e5b1-4f8e-9bdb-3275cda4c290" />

---

## 📖 Overview
This setup is my daily driver for school and development. It focuses on a clean aesthetic that stays out of the way while providing all the tools needed for a modern Linux workflow.

## 🛠️ The Toolkit
These are the core components that make the system tick.

| Category | Component |
| :--- | :--- |
| **Window Manager** | [Hyprland](https://hyprland.org/) |
| **Terminal** | `kitty` |
| **Browser** | `firefox` |
| **File Manager** | `thunar` |
| **App Launcher** | `fuzzel` |
| **Status Bar** | `waybar` |
| **Wallpaper** | `waypaper` |
| **Notifications** | `swaync` |
| **Screenshots** | `grim` + `slurp` |

### ➕ Additional Dependencies
* **Networking:** `nm-connection-editor` (nmgui)
* **Logout Menu:** `wlogout`
* **Audio/Bluetooth:** `snappy-switcher`
* **Shell:** `oh-my-zsh`

---

## 🚀 Getting Started

### 1. Prerequisites
Ensure you are on **Arch Linux** and have a helper like `yay` or `paru` installed to grab any missing AUR packages.

### 2. Installation
*Note: It is always recommended to back up your existing configs before overwriting.*

```bash
# Clone the repository
git clone [https://github.com/YOUR_USERNAME/dotfiles.git](https://github.com/YOUR_USERNAME/dotfiles.git)
cd dotfiles

# Example: Symlinking a config (Adjust based on your folder structure)
ln -s ~/dotfiles/hypr ~/.config/hypr
