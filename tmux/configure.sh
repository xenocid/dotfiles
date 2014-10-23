rbenv shell 2.1.3
if [[ $(gem list | grep tmuxinator) == "" ]]
then
    gem install tmuxinator
fi
