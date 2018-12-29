#!/usr/bin/env bash

pwd
ls -hal
rsync -avzhP -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --delete ./_site/ deploy@knightoftheoldcode.com:/var/www/knightoftheoldcode.com/html/
