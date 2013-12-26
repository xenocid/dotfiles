mkdir -p ~/Library/Scripts/Applications
if [ ! -d ~/Library/Scripts/Applications ]
then
        ln -s `pwd`/omnifocus/Scripts/ ~/Library/Scripts/Applications/OmniFocus
fi
