#!/bin/bash
# Script to run multiple python twitter bots found within this directory
# Use other service for mass unfollow of bots 

cat <<EOF
 _____      _ _   _           
|_   _| _ _|_| |_| |_ ___ ___ 
  | || | | | |  _|  _| -_|  _|
  |_||_____|_|_| |_| |___|_|Bots
    Retweet, Follow, Like 
                              
EOF

echo "Ready?
HERE WE GOOOO! 
"

for py_file in $(find -name fav_rt.py)
do
    python $py_file
done