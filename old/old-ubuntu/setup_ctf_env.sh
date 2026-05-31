#!/bin/bash

echo "CTF Python Setup Script"

read -p "Enter the CTF you are setting up: " CTF_NAME

mkdir -p "$CTF_NAME"
cd "$CTF_NAME" || exit 1

python3 -m venv venv
source venv/bin/activate

pip install --upgrade pip

pip install pwntools requests pycryptodome ipython angr

echo "Environment setup for '$CTF_NAME'! Get ready to pwn away!"
echo "do cd '$CTF_NAME'"
echo "source venv/bin/activate"
echo "and you are off to the races!"
