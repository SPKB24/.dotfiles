#!/bin/sh

if [ -h ~/.vimrc ]; then
    unlink ~/.vimrc
fi
mv ~/.vimrc-backup ~/.vimrc

if [ -h ~/.zshrc ]; then
    unlink ~/.zshrc
fi
mv ~/.zshrc-backup ~/.zshrc

if [ -h ~/.tmux.conf ]; then
    unlink ~/.tmux.conf
fi
mv ~/.tmux.conf-backup ~/.tmux.conf

if [ -d ~/.vim ] && [ -L ~/.vim ]; then 
    unlink ~/.vim 
fi
mv ~/.vim-backup ~/.vim

if [ -d ~/.oh-my-zsh ] && [ -L ~/.oh-my-zsh ]; then 
    unlink ~/.oh-my-zsh
fi
mv ~/.oh-my-zsh-backup ~/.oh-my-zsh

echo "Uninstallation complete!"
