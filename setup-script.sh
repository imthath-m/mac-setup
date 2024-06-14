# To remove all pinned items from dock
defaults write com.apple.dock persistent-apps -array
# Restart dock for changes to take effect
killall Dock

#install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Add Homebrew to your PATH in ~/.zprofile:
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# install apps and command line tools via brew
brew bundle install

# set path for Java
export PATH="/usr/local/opt/openjdk/bin:$PATH"