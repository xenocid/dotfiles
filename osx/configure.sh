cp -R -n ./osx/services/* ~/Library/Services/

# Symlink PopClip settings
unlink  ~/Library/Application\ Support/PopClip
ln -s ~/Dropbox/Apps/PopClip ~/Library/Application\ Support/PopClip
