#!/usr/bin/env bash

## Script Source: https://github.com/woefe/dotfiles.git
###################### Boilerplate and preparation ######################
function check_prog() {
    if ! hash "$1" > /dev/null 2>&1; then
        echo "Command not found: $1. Aborting..."
        exit 1
    fi
}

check_prog stow
check_prog curl

mkdir -p "$HOME/.config"
#########################################################################



############################# How to use it #############################
#                                                                       #
# Uncomment the lines of the configs you want to install below.         #
# Then run this script from within the dotfiles directory.              #
# E.g. `cd ~/.dotfiles; ./install.sh`                                   #
#                                                                       #
# To uninstall the config later, run stow -D in the dotfiles directory. #
# E.g. `cd ~/.dotfiles; stow -D vim`                                    #
#                                                                       #
#########################################################################

#stow --target "$HOME" --no-folding fish
#stow --target "$HOME" --no-folding vim
#stow --target "$HOME"              ipython
#stow --target "$HOME"              omf
#stow --target "$HOME"              sage
#stow --target "$HOME"              sys-config
#stow --target "$HOME"              terminator
#stow --target "$HOME"              tizonia

