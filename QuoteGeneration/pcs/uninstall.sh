#!/bin/bash

if which pm2 > /dev/null
then
    pm2 stop pcs_server 
    pm2 delete pcs_server
    pm2cfg=`pm2 unstartup | grep 'sudo'`
    eval $pm2cfg
fi

rm -rf node_modules
