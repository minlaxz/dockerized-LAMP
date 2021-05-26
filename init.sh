#! /bin/bash

# Making a directory
if [[ -d $HOME/.laxz ]]; then
    rm -rf $HOME/.laxz
fi
mkdir -p $HOME/.laxz/

# Copy all scripts
cp -r ./scripts/ $HOME/.laxz/

# Copy main script
cp ./laxz-dk.sh $HOME/.laxz/laxz-dk

# Making a clean .dockerenv
echo "" > $HOME/.laxz/dockerenv

currentShell=$(ps | grep `echo $$` | awk '{ print $4 }')


# I am busy
if [[ $currentShell == "bash" ]] ; then
    echo "source $HOME/.laxz/dockerenv" >> $HOME/.bashrc
    echo "alias laxz-dk='$HOME/.laxz/laxz-dk'" >> $HOME/.bashrc
    echo "export PATH=$PATH:$HOME/.laxz/scripts" >> $HOME/.bashrc
else
    echo "source $HOME/.laxz/dockerenv" >> $HOME/.zshrc
    echo "alias laxz-dk='$HOME/.laxz/laxz-dk'" >> $HOME/.zshrc
    echo "export PATH=$PATH:$HOME/.laxz/scripts" >> $HOME/.zshrc
fi

echo "Success : Now you should open a new termial session."

