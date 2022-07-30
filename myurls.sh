#!/bin/sh
sed -i "s#http://a.greenfishpowered.cn#https://$ENV_DOMAIN#g" ./public/index.html
./linux-amd64-myurls.service -domain $ENV_DOMAIN -conn $REDISHOST:$REDISPORT -passwd $REDISPASSWORD -ttl $ENV_TTL &
nginx -g 'daemon off;'
