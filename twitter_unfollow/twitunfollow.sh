#!/bin/bash
# Script to run mass unfollowing

cat <<EOF                          
 _         _ _   _             
| |_ _ _ _|_| |_| |_ ___ ___   
|  _| | | | |  _|  _| -_|  _|  
|_| |_____|_|_| |_|_|___|_|    
 _ _ ___|  _|___| | |___ _ _ _ 
| | |   |  _| . | | | . | | | |
|___|_|_|_| |___|_|_|___|_____|
   Mass Unfollow All Bots                        
                          
EOF

echo "Ready?
HERE WE GOOOO! 
"

for py_file in $(find -name unfollow.py)
do
    python $py_file
done