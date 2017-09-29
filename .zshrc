# Path to your oh-my-zsh installation.
export ZSH=/nfs/2017/c/$(whoami)/.oh-my-zsh
# Set name of the theme to load. Optionally, if you set this to "random"
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="aussiegeek"
plugins=(git)
plugins=(git battery)
source $ZSH/oh-my-zsh.sh
command_exists () { #to see if a program is installed
    type "$1" &> /dev/null ;
}
# term initializations
clear   #clear the screen after exec zsh is run
#If you have cowsay and fortune, then you will have a cow saying something on startup
if command_exists cowsay && command_exists fortune && command_exists lolcat ; then
    clear; fortune | cowsay -f tux | lolcat
    alias home='cd; clear; fortune | cowsay | lolcat'
elif command_exists cowsay && command_exists fortune ; then
    clear; fortune | cowsay -f tux
    alias home='cd; clear; fortune | cowsay'
else
    alias home='cd; clear'
fi
RANGER_LOAD_DEFAULT_RC="FALSE";
# edit aliases
alias tm='tmux -2'
alias vb='vim ~/.bashrc'
alias vz='vim ~/.zshrc'
alias vv='vim ~/.vimrc'
alias vt='vim ~/.tmux.conf'
alias vh='cd /etc; printf "Elevated privileges are required to edit the hosts file! Enter <sudo hosts> to edit it.\n"'
alias cim='vim' #common typo
alias obr='open -e ~/.bashrc && source ~/.bashrc'
alias ovr='open -e ~/.vimrc'
alias oe='open -e'
# ls options
alias l='ls -G'
alias la='ls -AFG'
alias ll='ls -lAFG'
alias cl='clear; ls -G'
alias cls='clear; ls -G'
alias cla='clear; la -G'
alias cll='clear; ll -G'
# grep options
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
#cd aliases
alias desk='cd ~/Desktop/'
alias docs='cd ~/Documents/'
alias work='cd ~/Workspace/'
alias apps='cd ~/Applications/'
alias tulz='cd ~/Workspace/tulz'
#other aliases
alias home='cd; clear; fortune | cowsay -f dragon | lolcat -s 1'
alias c='clear'
alias pg='ping google.com'
alias brew='~/goinfre/brew/bin/brew'
# set command prediction from history, see 'man 1 zshcontrib'
# zle -N predict-on         && \
# define word separators (for stuff like backward-word, forward-word, backward-kill-word,..)
WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>' # the default
WORDCHARS=.
WORDCHARS='*?_[]~=&;!#$%^(){}'
WORDCHARS='${WORDCHARS:s@/@}'
## try to avoid the 'zsh: no matches found...'
# setopt nonomatch
# don't warn me about bg processes when exiting
# setopt nocheckjobs
# the default grml setup provides '..' as a completion. it does not provide
# '.' though. If you want that too, use the following line:
# zstyle ':completion:*' special-dirs true
# if(zsh completion is installed) we will enable it
if [ -f $(brew --prefix)/etc/zsh_completion ]; then
    $(brew --prefix)/etc/zsh_completion
fi
alias clean='find ~/Library/Logs/DiagnosticReports/ -delete'
alias tmux='~/goinfre/brew/Cellar/tmux/2.5/bin/tmux'
alias cowsay='~/goinfre/brew/Cellar/cowsay/3.04/bin/cowsay'
alias fortune='~/goinfre/brew/Cellar/fortune/9708/bin/fortune'
alias lolcat='~/goinfre/brew/Cellar/lolcat/42.24.1/bin/lolcat'
alias screenfetch='~/goinfre/brew/Cellar/screenfetch/3.8.0/bin/screenfetch'
alias shpotify='~/goinfre/brew/Cellar/shpotify/1.2.0/bin/spotify'
alias sbuild='/usr/bin/gcc -Wall -Wextra -Werror'
alias normi='norminette -R CheckForbiddenSourceHeader'
alias apd='cat ~/appendage >>'
alias spotify-cli='~/Workspace/Scripts/spotify-cli'

# Reset this address
export MAIL42=marvin@42.us
export USER42=$(whoami)
