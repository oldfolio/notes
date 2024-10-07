#!/bin/sh
# You should add gmsg.txt to your ~/.gitignore file
# if you are really going to use this script.

# If you are cloning an upstream orign:
git pull

git add .
git status > gmsg.txt

# If you are NOT cloning an upstream origin:
#sed -i '3d' gmsg.txt
# If you ARE cloning an upstream orign:
sed -i '1,5d' gmsg.txt

git commit -a -F gmsg.txt
rm gmsg.txt

# If you are cloning an upstream orign:
git push
