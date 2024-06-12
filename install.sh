#!/usr/bin/env sh

# Created by kortaol

read -p "Installing ./ive to \"\$HOME/.local/bin\". Press Ctrl+C to abort. "

if [[ $(echo $PATH | grep -q "\.local/bin") ]]; then
    mkdir -p $HOME/.local/bin
    echo "export PATH=\"\$PATH:$HOME/.local/bin\"" >> $HOME/.bashrc
fi

chmod +x ./ive
cp ./ive $HOME/.local/bin
