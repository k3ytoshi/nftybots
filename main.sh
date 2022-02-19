#!/bin/bash

cat <<EOF      
   __        __    
  / /  ___  / /____
 / _ \/ _ \/ __(_-<
/_.__/\___/\__/___/
  A BETA PROJECT                   
                                             
EOF

cat <<EOF
Grey Hat Growth Hack Tools 
Creator - https://github.com/keat0n
To purchase decryption key email k34t0n@protonmail.com 

EOF

echo "AVAILABLE SERVICES"
dirs=(*/)

read -p "$(
        f=0
        for dirname in "${dirs[@]}" ; do
                echo "$((++f)): $dirname"
        done

        echo -ne 'Please select bot to run > '
)" selection

selected_dir="${dirs[$((selection-1))]}"

cd "${dirs[$((selection-1))]}"

echo "You selected '$selected_dir'
"

echo "locating desired scripts and directories
"
echo "beginning script automations
"
./twitter.sh
./twitunfollow.sh
./discord.sh 

echo "execution of scripts has ended
thank you for using BotBeta"








