#!/bin/bash
sudo apt-get update && \
sudo apt-get install -y \
	build-essential \
	git \
	tmux \
	python3 \
	gcc \
	gdb \
	vim \
	ipython3 \
	netcat-traditional \
	wireshark \
	strace \
	ltrace \
	nmap \
	checksec \
	python3-pip \
	python3-venv \
	file \
	ripgrep 
echo "[*] Downloading Neovim..."
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz

echo "[*] Removing previous Neovim installation..."
sudo rm -rf /opt/nvim-linux-x86_64

echo "[*] Extracting Neovim..."
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

rm nvim-linux-x86_64.tar.gz

SHELL_NAME=$(basename "$SHELL")
if [ "$SHELL_NAME" = "zsh" ]; then
    CONFIG_FILE="$HOME/.zshrc"
else
    CONFIG_FILE="$HOME/.bashrc"
fi

# Add to PATH if not already present
if ! grep -q '/opt/nvim-linux-x86_64/bin' "$CONFIG_FILE"; then
    echo "[*] Adding Neovim to PATH in $CONFIG_FILE"
    echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >> "$CONFIG_FILE"
else
    echo "[*] Neovim PATH already present in $CONFIG_FILE"
fi

echo "[*] Done. Restart your shell or run 'source $CONFIG_FILE' to update your PATH."
