# 42.us-configs
Assorted dotfiles for 42.us Pisciners and cadets. This will install oh-my-zsh, fix vim-header, the json bundle error with norm, and install other fun tools.
This is designed to work on any user, on any lab machine, out of the box.

## Getting Started
Installs homebrew :) just follow the installation instruction

## Installing

```
cd
git clone https://github.com/42.us-configs
cp -r ~/42.us-configs/* ~/
chmod +x hotfixes.sh
~/hotfixes.sh
```

## Usage ##
Be sure to set your user variables in your .zshrc to finish proper configuration of the vim-header.
Run hotfixes.sh whenever you move to a new machine, but not when you return to the same machine.

### Authors
Caleb-Shepard
cshepard@42.us

### License
This project is licensed under the GPLv3

### Pull Requests and Modification
This collection of scripts is freely modifiable and redistributable under the GPLv3. As free software, you may do what you wish; you may contact me with pull requests and feel free to report any issues.
