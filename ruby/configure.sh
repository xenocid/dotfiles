if ! rbenv versions | grep 'jruby-1.7.9' 1>/dev/null
then
	rbenv install -s jruby-1.7.16
fi

if ! rbenv versions | grep '1.9.3-p484' 1>/dev/null
then
	rbenv install -s 1.9.3-p547
fi

if ! rbenv versions | grep '2.1.0' 1>/dev/null
then
	rbenv install -s 2.1.3
fi
