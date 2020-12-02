#!/bin/sh

# copy file
rsync -avzu --progress --exclude-from '/home/aatrox/document/foam-template-master/script/exclude.txt' ~/document/foam-template-master/* ~/document/gatsby/foam/content


# deploy
# ~/document/gatsby/node_modules/gatsby-cli/cli.js clean
~/document/gatsby/node_modules/gatsby-cli/cli.js build

# git 
cd public
git add .
git commit -m $(date "+%Y.%m.%d")
git push -u origin master

