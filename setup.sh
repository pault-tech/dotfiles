echo setting up codespace dotfiles...
echo setting up codespace dotfiles > /var/tmp/dotfilesetup
date >> /var/tmp/dotfilesetup

#install spacevim
curl -sLf https://spacevim.org/install.sh | bash

git clone https://github.com/pault-tech/dotfiles.git

