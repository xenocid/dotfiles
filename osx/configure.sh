cp -R -n ./osx/services/* ~/Library/Services/

# Symlink PopClip settings
unlink  ~/Library/Application\ Support/PopClip
ln -s ~/Dropbox/Apps/PopClip ~/Library/Application\ Support/PopClip

# Skip last login info output, makes shell to start a bit faster
touch $HOME/.hushlogin

# Link Dropbox/Inbox if it exists to ~/Downloads
if [ ! -d ~/Dropbox/Inbox ]
then
    ln -s ~/Dropbox/Inbox ~/Downloads 
fi
