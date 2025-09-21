# nvim
My personal neovim configuration

Heres my .tmux.conf as well

```
unbind r 
bind r source-file ~/.tmux.conf

set -g default-terminal "tmux-256color"
set-option -sa terminal-overrides ',xterm-256color:RGB'


set -g prefix C-s

set -g mouse on

bind-key h select-pane -L
bind-key j select-pane -D
bind-key k select-pane -U
bind-key l select-pane -R
```
