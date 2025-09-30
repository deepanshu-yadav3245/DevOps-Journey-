#!/bin/bash

# Create multiple users from a file

USERFILE="users.txt"

if [ ! -f $USERFILE ]; then
    echo "User file not found!"
    exit 1
fi

while read user; do
    if id "$user" &>/dev/null; then
        echo "User $user already exists."
    else
        useradd -m $user
        echo "User $user created successfully."
    fi
done < $USERFILE


