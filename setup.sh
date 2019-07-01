#!/bin/sh
# Sohit Pal

## First and foremost, figure out where we are going to save all of these files
DOTFILE_PATH=~/.dotfiles

if [[ $DOTFILES = "" ]]; then
    echo "You have not setup your DOTFILES path. Using $HOME/.dotfiles/ as default location. If that is incorrect, set DOTFILES path, and try again"
else
    echo "Found DOTFILES at $DOTFILES"
    DOTFILE_PATH=$DOTFILES
    echo "Using $DOTFILE_PATH"
fi

# Check if vimrc is a symlink
if [ -L ~/.vimrc ]; then
    if [ -f ~/.vimrc ]; then
        if [ ! -f ~/.vimrc-backup]; then
            # Backup doesn't exist, move the file to a backup location
            mv ~/.vimrc ~/.vimrc-backup
        fi
    else
        # Delete the previous symlink
        rm ~/.vimrc
    fi
fi
ln -s $DOTFILE_PATH/vim/vimrc ~/.vimrc

if [ -L ~/.zshrc ]; then
    if [ -f ~/.zshrc ]; then
        if [ ! -f ~/.zshrc-backup]; then
            # Backup doesn't exist, move the file to a backup location
            mv ~/.zshrc ~/.zshrc-backup
        fi
    else
        # Delete the previous symlink
        rm ~/.zshrc
    fi
fi
ln -s $DOTFILE_PATH/zsh/zshrc ~/.zshrc

if [ -L ~/.tmux.conf ]; then
    if [ -f ~/.tmux.conf ]; then
        if [ ! -f ~/.tmux.conf-backup]; then
            # Backup doesn't exist, move the file to a backup location
            mv ~/.tmux.conf ~/.tmux.conf-backup
        fi
    else
        # Delete the previous symlink
        rm ~/.tmux.conf
    fi
fi
ln -s $DOTFILE_PATH/tmux/tmux.conf ~/.tmux.conf

if [ -d ~/.vim ]; then 
    if [ -L ~/.vim ]; then
        # Delete the previous symlink 
        rm ~/.vim 
    else
        if [ ! -d ~/.vim-backup]; then
            # Backup doesn't exist, move the dir to a backup location
            mv ~/.vim ~/.vim-backup
        fi
    fi
fi
ln -s $DOTFILE_PATH/vim/vim ~/.vim

if [ -d ~/.oh-my-zsh ]; then 
    if [ -L ~/.oh-my-zsh ]; then
        # Delete the previous symlink 
        rm ~/.oh-my-zsh
    else
        if [ ! -d ~/.oh-my-zsh-backup]; then
            # Backup doesn't exist, move the dir to a backup location
            mv ~/.oh-my-zsh ~/.oh-my-zsh-backup
        fi
    fi
fi
ln -s $DOTFILE_PATH/zsh/oh-my-zsh ~/.oh-my-zsh

# Now make some necessary vim directories
mkdir -p $DOTFILE_PATH/vim/vim/backup
mkdir -p $DOTFILE_PATH/vim/vim/tmp


echo "Setup complete!"
echo "You will need to restart your terminal for changes to appear"
