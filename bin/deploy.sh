#!/usr/bin/env bash

docker-compose run web bundle exec jekyll build

rsync -avzhP -e ssh --delete ./_site/ deploy@knightoftheoldcode.com:/var/www/knightoftheoldcode.com/html/

docker-compose run web bundle exec jekyll clean
