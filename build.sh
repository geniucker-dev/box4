#!/bin/sh

git clone -b gh-pages https://github.com/MetaCubeX/Yacd-meta webroot

zip -r -o -X -ll box4_$(cat module.prop | grep 'version=' | awk -F '=' '{print $2}').zip ./ -x '.git/*' -x 'webroot/.git/*' -x 'build.sh' -x '.github/*' -x 'box4.json'

rm -r webroot
