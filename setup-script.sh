# To remove all pinned items from dock
defaults write com.apple.dock persistent-apps -array
# Restart dock
killall Dock

#install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install apps and command line tools via brew
brew bundle install