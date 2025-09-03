#!/bin/bash
sudo apt-get update && \
sudo apt-get install -y \
	gnome-tweaks \
	alacritty \
	mpv 

sudo snap install \
	discord \
	chromium

if command -v cargo &> /dev/null; then
    echo "Rust is installed. Installing Spotify Player"
    cargo install spotify_player --features "daemon"
else
    echo "Rust is not installed. Please install it with:"
    echo "  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh"
    exit 1
fi



