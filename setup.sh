# To remove all pinned items from dock
defaults write com.apple.dock persistent-apps -array
# Restart dock for changes to take effect
killall Dock

xcode-select --install

expected="cltools-installed"
echo "Please follow the instrcutions in the Xcode Command Line Tools installation dialog box"
echo "Come back here once you are done with it"
echo "Enter $expected to proceed"
read status

if [ $status != $expected ]
then 
    echo "Exiting script. Please install Xcode Command Line Tools by running following command and then proceed"
    echo "xcode-select --install"
    echo "If you have already installed then properly, please type correctly $expected when prompted"
    exit 1
fi

echo "Xcode Command Line Tools installed. Proceeding to install Homebrew."

# write code to wait for dialog to complete installation

#install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Add Homebrew to your PATH in ~/.zprofile:
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# install apps and command line tools via brew
brew bundle install

# set path for Java
export PATH="/usr/local/opt/openjdk/bin:$PATH"