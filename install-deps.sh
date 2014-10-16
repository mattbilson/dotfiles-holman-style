chsh -s /bin/zsh

# up to you (me) if you want to run this as a file or copy paste at your leisure
echo "**\t Installing oh-my-zsh"
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh


# https://github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
echo "**\t Installing git-friendly"
rm -rf ~/Development/tools/git-friendly
git clone git://github.com/jamiew/git-friendly.git ~/Development/tools/git-friendly
export PATH=~/Development/tools/git-friendly:$PATH

# https://rvm.io
# rvm for the rubiess
curl -L https://get.rvm.io | bash -s stable --ruby --auto-dotfiles
#add to .zshrc
#echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.' >> ~/.zshrc
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
source ~/.rvm/scripts/rvm



# homebrew!
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/homebrew/go/install)"
export PATH=$HOME/.homebrew/bin:$HOME/.homebrew/sbin:$PATH


# https://github.com/rupa/z
# z, oh how i love you
git clone https://github.com/rupa/z.git ~/Development/tools/z
chmod +x ~/Development/tools/z/z.sh
# also consider moving over your current .z file if possible. it's painful to rebuild :)



# https://github.com/thebitguru/play-button-itunes-patch
# disable itunes opening on media keys
cd ~/Development/tools
git clone https://github.com/thebitguru/play-button-itunes-patch

# install NVM
curl https://raw.githubusercontent.com/creationix/nvm/v0.17.2/install.sh | bash
nvm install 0.10.32
#nvm use stable