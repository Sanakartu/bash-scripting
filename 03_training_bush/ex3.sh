#!/bin/bash

read -p "Lets pick a dir or command " CURRENTDIR
echo "Ayo, $USER! Date : $(date +%d.%m.%Y)"

#if CURRENTDIR == cd .. then 
if [[ "$CURRENTDIR" == "cd .." ]] then
    echo "Command detected:"
    cd ..  # Doing like command
    echo "Lets pick a dir: $CURRENTDIR"
    echo "Going to: $(pwd)"
    echo "Your ls -l:"
    ls -l
else
    echo "You wanted a path, executing..."
    cd "$CURRENTDIR"  # Doing like path
    echo "Switching dir: $CURRENTDIR"
    echo "Working dir: $(pwd)"
    echo "Your ls -l ... ... again:"
    ls -l


fi
