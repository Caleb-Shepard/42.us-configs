# Gives you zsh customizations and vim colorings
# Installs homebrew
# Installs cowsay, tmux, fortune, lolcat, screenfetch
# Remap home and end keys

if [ ! -e '$HOME/goinfre' ] ; then
    mkdir /goinfre/$(whoami)
fi
export PATH="$HOME"/goinfre/brew/bin:"$PATH"
if [ ! -d '$HOME/goinfre/brew/bin' ] ; then
    git clone https://github.com/Homebrew/homebrew.git ~/goinfre/brew
    brew update
fi

# install tmux and important stuff like that
brew install lolcat cowsay fortune tmux screenfetch shpotify

# unneccessary
# chsh -s /bin/zsh

# clean iterm logs out
find ~/Library/Logs/DiagnosticReports/ -delete

# fix json bundle error with norm
gem install --user-install json -v 1.8.3
gem install --user-install --pre norminette

# remap home and end keys to be home and end keys
mkdir -p ~/Library/KeyBindings/
touch ~/Library/KeyBindings/DefaultKeyBinding.dict
echo "{\n\t\"\UF729\"  = moveToBeginningOfParagraph:; // home\n\t\"\UF72B\"  = moveToEndOfParagraph:; // end\n\t\"$\UF729\" = moveToBeginningOfParagraphAndModifySelection:; // shift-home\n\t\"$\UF72B\" = moveToEndOfParagraphAndModifySelection:; // shift-end\n}" >> ~/Library/KeyBindings/DefaultKeyBinding.dict

source ~/.zshrc
