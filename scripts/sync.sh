#!/bin/bash

NODE_ENV='production' gatsby build

# rsync -av --delete --stats ./public/ --exclude={"/dev/*","/var/log/*"} root@chavkov.com:/var/vhost/chavkov.com/
rsync -av --delete --stats ./public/ --exclude={"/dev/*","/var/log/*"} root@assistance.bg:/var/vhost/assistance.bg/