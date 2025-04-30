# Dotfiles Installation Guide

# Install and manage dotfiles using [GNU Stow](https://www.gnu.org/software/stow/) or manually, depending on your preference.

---

## 🔧 Prerequisites

### 1. Install GNU Stow

#### macOS

```sh
brew install stow
```

#### Arch Linux

```sh
sudo pacman -S stow
```

---

## 🚀 Install Using Stow (Recommended)

1. Clone the repository:

   ```sh
   git clone https://github.com/blissed-out/dotfiles
   cd dotfiles
   ```

2. Stow the folder you want to symlink:
   ```sh
   stow <folder-name>
   ```
   Replace `<folder-name>` with the config directory you want to install, such as `nvim`, `zsh`, `tmux`, etc.

> ⚠️ Make sure you run `stow` from **inside** the `dotfiles` directory.

---

## 🛠 Manual Installation (If Not Using Stow)

1. Clone the repository:

   ```sh
   git clone https://github.com/blissed-out/dotfiles
   cd dotfiles
   ```

2. Copy or symlink the desired configuration folder:

   - To copy:

     ```sh
     cp -r <folder-name> ~/.config/
     ```

   - Or to create a symlink:
     ```sh
     ln -s $(pwd)/<folder-name> ~/.config/<folder-name>
     ```

> For standalone files like `.zshrc` or `.bashrc`, move or link them directly to your home directory.

---

## 📁 Folder Structure Example

```
dotfiles/
├── nvim/
├── zsh/
├── tmux/
└── README.md
```

---
