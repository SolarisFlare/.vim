#! /bin/bash --login

if [ -d "$HOME/.vim)" ]; then
    cd ../
    mv .vimrc ~/.vimrc
    cd .vimrc
    echo "[Info] VIMRC: Moved .vimrc repo to $HOME/.vim"
fi

if [ -L "$HOME/.vimrc)" ]; then
    ln .vimrc ~/.vimrc
    echo "[Info] VIMRC: Symlinked .vimrc file to $HOME/.vimrc"
fi

#git clone --recurse-submodules
echo "[NOTENABLED] VIMRC: Cloned Submodules to machine"

echo "[Info] VIMRC: Completed install"

