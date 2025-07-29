# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# add homebrew to path
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/[your_username]/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# install vscode via homebrew
brew install --cask visual-studio-code