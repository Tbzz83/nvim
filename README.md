# nvim
My personal neovim configuration

Heres my .tmux.conf as well
make sure to download the cattpuccin and tmux-cpu and tmux-battery themes:
https://github.com/tmux-plugins/tmux-battery
https://github.com/tmux-plugins/tmux-cpu
https://github.com/catppuccin/tmux

```
# Reload config
unbind r
bind r source-file ~/.tmux.conf \; display-message "Config reloaded"

set -g default-terminal "tmux-256color"

# Prefix
set -g prefix C-s

# Mouse support
set -g mouse on

# Pane switching
bind-key h select-pane -L
bind-key j select-pane -D
bind-key k select-pane -U
bind-key l select-pane -R

# --- Catppuccin theme for tmux! ---
# Configure the catppuccin plugin
set -g @catppuccin_flavor "mocha"
set -g @catppuccin_window_status_style "rounded"

# Load catppuccin
run ~/.config/tmux/plugins/catppuccin/tmux/catppuccin.tmux
# For TPM, instead use `run ~/.tmux/plugins/tmux/catppuccin.tmux`

# Make the status line pretty and add some modules
set -g status-right-length 100
set -g status-left-length 100
set -g status-left ""
set -g status-right "#{E:@catppuccin_status_application}"
set -agF status-right "#{E:@catppuccin_status_cpu}"
set -ag status-right "#{E:@catppuccin_status_session}"
set -ag status-right "#{E:@catppuccin_status_uptime}"
set -agF status-right "#{E:@catppuccin_status_battery}"

run ~/.config/tmux/plugins/tmux-cpu/cpu.tmux
run ~/.config/tmux/plugins/tmux-battery/battery.tmux
# -- CATPPUCCIN END ---
```
