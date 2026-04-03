# 🧠 Dotfiles Setup (Fish + Tmux)

Minimal setup to bootstrap a better terminal experience using **Fish shell** and **Tmux**.

---

## ✨ Overview

This setup provides:

* 🐚 A modern shell using **Fish**
* 🧩 Terminal multiplexing with **Tmux**
* ⚡ Automatic Tmux session on terminal startup

---

## 🚀 Installation

### 1. Install dependencies

```bash
sudo apt update
sudo apt install fish tmux
```

---

### 2. Configure Tmux

Copy the Tmux configuration file:

```bash
cp tmux.conf ~/.tmux.conf
```

---

### 3. Auto-start Tmux

Append the following to your `~/.bashrc`:

```bash
cat << 'EOF' >> ~/.bashrc

# Launch tmux on terminal start
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
    tmux attach-session -t default || tmux new-session -s default
fi
EOF
```

Apply changes:

```bash
source ~/.bashrc
```

---

### 4. Configure Fish

Run:

```bash
fish_config
```

This will open a web UI (usually at `http://localhost:8000`) where you can:

* Choose a theme 🎨
* Customize prompt
* Adjust shell preferences

---

## 🧪 Usage

After setup:

* Open a new terminal → Tmux starts automatically
* Use Fish shell for a better interactive experience
* Customize further via `fish_config`

---

## ⚠️ Notes

* This setup modifies your `~/.bashrc`
* Tmux will auto-start in interactive shells
* Fish is installed but not set as default shell (optional step below)

---

## 🔄 Optional: Set Fish as Default Shell

```bash
chsh -s $(which fish)
```

Log out and back in for this to take effect.

---

## 🧩 Customization Ideas

* Add plugins to Fish (e.g. via fisher)
* Extend Tmux config (status bar, keybindings)
* Add Neovim or Git configs to this repo

---

## 📚 Philosophy

Simple, minimal, and practical:

* No heavy frameworks
* Fast setup
* Easy to understand and modify

---

## ⚠️ Disclaimer

These are personal configurations.
Review before applying to your system.

---

## 🤝 Contributing

Feel free to fork and adapt to your needs.
