#!/bin/zsh

cd /mount/tsai/-\ tsai.co/whowillbepm.com
cactus build
s3_website push --site .build
cd -
echo "Terminating deploy script!"
