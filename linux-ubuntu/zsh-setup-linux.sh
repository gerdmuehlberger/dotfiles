#readup: https://itsfoss.com/zsh-ubuntu/

# install zsh + fonts
apt install zsh git fonts-font-awesome

# install Oh My Zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# add auto-suggestion plugin 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# add syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Customise Zsh with Powerlevek10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


#And add auto-suggestion and zsh-syntax-highlighting to plugins and powerlevel10k theme in ~/.zshrc file
awk '
/plugins=\(/ { gsub(/\)$/, " zsh-autosuggestions zsh-syntax-highlighting)"); print; next }
/ZSH_THEME="robbyrussell"/ { print "ZSH_THEME=\"powerlevel10k/powerlevel10k\""; next }
{ print }
' ~/.zshrc > ~/.zshrc.tmp && mv ~/.zshrc.tmp ~/.zshrc


# Customise powerlevel10k theme
# p10k configure


# change default shell from bash to zsh
chsh
/bin/zsh