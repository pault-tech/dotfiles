#sanity check
echo setting up codespace dotfiles...
echo setting up codespace dotfiles > /var/tmp/dotfilesetup
date >> /var/tmp/dotfilesetup

type vim || sudo apt update & sudo apt install -y vim

#install spacevim
curl -sLf https://spacevim.org/install.sh | bash

#gnu screen
type screen || sudo apt update & sudo apt install -y screen

#clone other GH repos
#NOTE: requires update to devcontainer.json https://github.com/orgs/community/discussions/36228
cd ~/
git clone https://github.com/pault-tech/dotfiles.git
git clone https://github.com/pault-tech/dotfiles-spacemacs.git

