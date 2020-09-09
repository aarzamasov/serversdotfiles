#!/bin/sh
mkdir -p ~/bin
export PATH=$PATH:~/bin
ln -s "/Applications/Sublime Merge.app/Contents/SharedSupport/bin/smerge" ~/bin/smerge

export XDG_CONFIG_HOME=/Users/aarzamasov/opt/serversdotfiles

git config --global mergetool.smerge.cmd 'smerge mergetool "$BASE" "$LOCAL" "$REMOTE" -o "$MERGED"'
git config --global mergetool.smerge.trustExitCode true
git config --global merge.tool smerge