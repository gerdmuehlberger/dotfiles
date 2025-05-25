#setup guide: https://dev.to/pavlosisaris/windows-command-line-revolution-unleash-zsh-and-oh-my-zsh-a-simple-guide-for-developers-271o

# installing git bash for windows
winget install --id Git.Git -e --source winget

# MANUAL STEP: Download the latest MSYS2 zsh package from the MSYS2 package repository at -> https://packages.msys2.org/packages/zsh?repo=msys&variant=x86_64

# MANUAL STEP: extract files from zsh package into C:\Program Files\Git folder. Verify with zsh --version

# Set ZSH as the Default Shell 


# TODO: add this as shellscript to C:\Users\<your user name>\.bashrc file:   
if [ -t 1 ]; then
    exec zsh
   fi

/c/Windows/System32/chcp.com 65001 > /dev/null 2>&1



# install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# add auto-suggestion plugin 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# add syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Customise Zsh with Powerlevek10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k




# TODO: add theme and plugins to .zshrc file like on linux