#!/bin/bash
set -e
#Update/Install dependencies for the tools
sudo apt-get update && \
sudo apt-get install -y \
	file \
	python3 \

echo "Installing GEF"
wget -q -O ~/.gdbinit-gef.py https://gef.blah.cat/py

echo "Configuring .gdbinit"
# Add GEF and Intel 
# syntax to .gdbinit if not already present
if ! grep -q "source ~/.gdbinit-gef.py" ~/.gdbinit 2>/dev/null; then
    echo "source ~/.gdbinit-gef.py" >> ~/.gdbinit
    echo "Added GEF to .gdbinit"
fi

if ! grep -q "set disassembly-flavor intel" ~/.gdbinit 2>/dev/null; then
    echo "set disassembly-flavor intel" >> ~/.gdbinit
    echo "Set Intel syntax for disassembly"
fi

echo "GEF setup complete."

