#!/usr/bin/env bash

rsync -avzhP -e ssh --delete ./_site/ deploy@knightoftheoldcode.com:/var/www/knightoftheoldcode.com/html/
