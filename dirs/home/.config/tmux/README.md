tmux settings
=============

Settings for tmux: a terminal multiplexer

https://tmux.github.io

Clone the repository to `~/.config/tmux` and create the symlink:

```
$ ln -s ~/.config/tmux/tmux.conf ~/.tmux.conf
```

This also requires:

```
$ brew install reattach-to-user-namespace
$ git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

