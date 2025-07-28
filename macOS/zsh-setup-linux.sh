#readup: https://itsfoss.com/zsh-ubuntu/

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# add homebrew to path
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/[your_username]/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Customise Zsh with Powerlevek10k theme
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# add autosuggestion plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# add syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


#And add auto-suggestion and zsh-syntax-highlighting to plugins and powerlevel10k theme in ~/.zshrc file
awk '
/plugins=\(/ { gsub(/\)$/, " zsh-autosuggestions zsh-syntax-highlighting)"); print; next }
/ZSH_THEME="robbyrussell"/ { print "ZSH_THEME=\"powerlevel10k/powerlevel10k\""; next }
{ print }
' ~/.zshrc > ~/.zshrc.tmp && mv ~/.zshrc.tmp ~/.zshrc

# Customise powerlevel10k theme
# p10k configure
