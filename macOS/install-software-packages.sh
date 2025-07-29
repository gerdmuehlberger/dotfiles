# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# add homebrew to path
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/[your_username]/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# install development software
brew install python@3.13
brew install rust
brew install docker
brew install --cask visual-studio-code
brew install --cask godot

# install other software
brew install --cask bitwarden
brew install --cask duckduckgo
brew install --cask discord
brew install --cask steam