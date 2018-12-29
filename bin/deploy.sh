#!/usr/bin/env bash

rsync -avzhP -e "ssh -oStrictHostKeyChecking==accept-new" --delete ./_site/ deploy@knightoftheoldcode.com:/var/www/knightoftheoldcode.com/html/
