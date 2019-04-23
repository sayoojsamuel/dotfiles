#!/bin/bash

## Script source  - https://github.com/peterhajas/dotfiles/blob/master/dotfiles.bash
echo "Updating all apps..."
for dir in */
do
    echo Unstowing $dir
    stow -D $dir
    echo Restowing $dir
    stow $dir
done
