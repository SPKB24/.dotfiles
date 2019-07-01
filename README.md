# Sohit's Dotfiles

## Table Of Contents
* [Introduction](#introduction)
* [Screenshots](#screenshots)
* [Usage](#usage)
  * [Install](#install)
  * [Uninstall](#uninstall)

## Introduction

These are dotfiles for my setup on MacOS. It includes vim (plugins, vimrc, etc), zsh, and iterm configurations.
Most of the stuff here is meant to be used on MacOS, and therefore might not work properly on other systems.

## Screenshots

**Vim**
![Vim Sample](screenshots/vim-sample.png)

**Iterm, Zsh, & Tmux**
![Iterm/Zsh Sample](screenshots/iterm-zsh-tmux-sample.png)

## Usage

### Dependencies

* [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
* [Tmux](https://github.com/tmux/tmux) (optional)

### Install

```bash
git clone --recurse-submodules https://github.com/SPKB24/.dotfiles.git ~/.dotfiles 
cd ~/.dotfiles && chmod +x setup.sh && bash setup.sh 
```

... and you're done*!

### Uninstall

To uninstall my dotfiles, and restore your previous ones, copy and paste the following code into your terminal:

```bash
chmod +x uninstall.sh
bash uninstall.sh
```

*<sub>I am not liable for anything that this breaks on your computer.</sub>
