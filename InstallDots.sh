#!/bin/bash
##DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd /tmp
apt-get update && apt-get install zsh curl unzip -y
## add support for colorized logging
wget https://github.com/tstack/lnav/releases/download/v0.8.4/lnav-0.8.4-linux-64bit.zip
unzip lnav-0.8.4-linux-64bit.zip
mv ./lnav-0.8.4/lnav /usr/bin

wget https://github.com/tstack/lnav/releases/download/v0.8.4/lnav-0.8.4-linux-64bit.zip
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/aarzamasov/serversdotfiles.git
cd /tmp
cp serversdotfiles/.zshrc ~/ -f
cp serversdotfiles/bash_aliases ~/ -f
mv ~/bash_aliases ~/.bash_aliases
cp serversdotfiles/.zshrc ~/ -f
cp serversdotfiles/bash_scrtipts/* ~/ -f
rm -rf serversdotfiles
zsh

