#!/bin/bash

for dotfile in $(find . -maxdepth 1 \( -iname '.*' -not -iname '.git*' -not -iname '.' \)); do
    rm -rf ${HOME}/${dotfile} || continue
    ln -s ${PWD}/${dotfile} ${HOME}/${dotfile}
done

mkdir -p $HOME/.config
ln -s ${PWD}/nvim ${HOME}/.config/nvim

