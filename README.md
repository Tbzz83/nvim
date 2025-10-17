# nvim
My personal neovim configuration

Heres my .tmux.conf as well

```
unbind r
bind r source-file ~/.tmux.conf \; display-message "Config reloaded"

# Let tmux advertise itself correctly
set -g default-terminal "tmux-256color"

# Ensure tmux tells programs that it supports truecolor
set -as terminal-overrides ',xterm-256color:RGB'
set -as terminal-overrides ',tmux-256color:RGB'

# Prefix
set -g prefix C-s

# Mouse
set -g mouse on

# Pane switching
bind-key h select-pane -L
bind-key j select-pane -D
bind-key k select-pane -U
bind-key l select-pane -R
```
