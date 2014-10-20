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
brew cask install bettertouchtool
brew cask install controlplane
brew cask install crashplan
brew cask install fitbit-connect
brew cask install flowdock
brew cask install google-hangouts
brew cask install iterm2
brew cask install karabiner
brew cask install keyboard-maestro

brew cask alfred link
