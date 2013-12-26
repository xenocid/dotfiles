if ! rbenv versions | grep 'jruby-1.7.9' 1>/dev/null
then
	rbenv install jruby-1.7.9
fi

if ! rbenv versions | grep '1.9.3-p484' 1>/dev/null
then
	rbenv install 1.9.3-p484
fi

if ! rbenv versions | grep '2.1.0' 1>/dev/null
then
	rbenv install 2.1.0
fi
