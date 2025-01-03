
# 🛠️ Dotfiles

Welcome to my **dotfiles** repository. This repository contains the configuration files (dotfiles) I use to set up and customize my development environment. It helps ensure consistency across my systems and makes onboarding to a new machine seamless. I use  [GNU Stow](https://www.gnu.org/software/stow/) to manage symlinks for configuration management.

---

## 🔧 What's Included?

| Tool/Configuration | Description                                      |
|---------------------|--------------------------------------------------|
| **vim**            | Vim/Neovim configuration, including `.vimrc` and plugins. |
| **zsh**            | Zsh configuration with aliases and `.zshrc`.    |
| **git**            | Git configuration, including `.gitconfig` and `.gitignore`. |
| **tmux**           | Tmux configuration for terminal multiplexing.   |

---

## 🚀 Quick Start Guide

### **1. Clone the Repository**
Clone the repository to your preferred directory. For example:
```bash
git clone https://github.com/dashouck/dotfiles.git ~/dotfiles
```

---

### **2. Install GNU Stow**
GNU Stow is used to symlink the dotfiles to your home directory.

- **On macOS**:
  ```bash
  brew install stow
  ```

- **On Debian/Ubuntu**:
  ```bash
  sudo apt install stow
  ```

---

### **3. Apply Configurations**
Use Stow to create symlinks for the desired configuration files. For example:
```bash
cd ~/dotfiles
stow -t ~ vim zsh git tmux
```

This will create symlinks in your home directory (e.g., `~/.vimrc` → `~/dotfiles/vim/.vimrc`).

---

### **4. Reload Your Shell**
After setting up, reload your shell to apply changes:
```bash
source ~/.zshrc
```

---

## 📜 Requirements

- **GNU Stow**: For managing symlinks.
- **Powerline Fonts** (optional): For enhanced visuals in Vim/Neovim, Tmux, and Zsh.
  - Install on macOS:
    ```bash
    brew install --cask font-hack-nerd-font
    ```

---

## 🤝 Contributions

Contributions are welcome! Feel free to fork the repository, open issues, or submit pull requests.

---

## 📝 License

This repository is released under the **MIT License**. See the [LICENSE](https://opensource.org/license/MIT) file for more details.

---
