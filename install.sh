#!/bin/bash

# copied from https://github.com/repzret/dotfiles/blob/master/install.sh
# thanks!

echo "Cloning repos"
git submodule update --init --recursive

for file in dot.*; do
    name=${file/dot/}
    echo "Installing $name";
    ln -snFi `pwd`/$file ~/$name
done

read -p "Do you want to install vim bundles now? It will take time! " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Installing vim bundles"
    vim +BundleInstall +qall
fi
