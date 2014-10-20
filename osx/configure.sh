cp -R -n ./osx/services/* ~/Library/Services/

# Symlink PopClip settings
unlink  ~/Library/Application\ Support/PopClip
ln -s ~/Dropbox/Apps/PopClip ~/Library/Application\ Support/PopClip

# Install LaunchRocket (https://github.com/jimbojsb/launchrocketo)
# Homebrew services control panel
brew tap jimbojsb/launchrocket
brew cask install launchrocket

# Skip last login info output, makes shell to start a bit faster
touch $HOME/.hushlogin

brew cask install google-chrome
brew cask install alfred
brew cask install dropbox
brew cask install textexpander
brew cask install controlplane
brew cask install virtualbox
brew cask install calibre
brew cask install omnifocus
brew cask install onepassword

brew cask alfred link
