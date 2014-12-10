# Install hk (unofficial heroku client)
L=/usr/local/bin/hk && curl -sL -A "`uname -sp`" https://hk.heroku.com/hk.gz | zcat >$L && chmod +x $L
