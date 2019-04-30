#!/bin/bash

TARGET_HOSTS="\
45.56.84.78 \
139.162.191.120 \
"

# NODE_ENV='production' gatsby build

for TARGET_HOST in $TARGET_HOSTS; do
    printf "Sync $TARGET_HOST ...\n"
    rsync -av --delete --stats ./public/ --exclude={"/dev/*","/var/log/*"} root@${TARGET_HOST}:/var/vhost/chavkov.com/
done;