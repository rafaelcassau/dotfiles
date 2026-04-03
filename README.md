```
sudo apt install fish

sudo apt install tmux

cp tmux.conf ~/.tmux.conf
```

# In the default terminal runs:

```
cat << 'EOF' >> ~/.bashrc

# Launch tmux on terminal start
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
    tmux attach-session -t default || tmux new-session -s default
fi
EOF
```

```
source ~/.bashrc
```
# After that you can run fish_config to set via localhost the settings you preferred.
