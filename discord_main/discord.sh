#!/bin/bash
# Script to run multiple python discord bots found within this directory 

for py_file in $(find $DISCORD *.py)
do
    python $py_file
done