#sanity check
echo setting up codespace dotfiles...
echo setting up codespace dotfiles > /var/tmp/dotfilesetup
date >> /var/tmp/dotfilesetup

#install vim if needed
#TODO is this needed?: type vim || sudo apt update && sudo apt install -y vim

#install spacevim
curl -sLf https://spacevim.org/install.sh | bash
IFS=  && read -r -d '' TXT << EOM
[[layers]]
name = "git"
git_plugin = 'git'

[[layers]]
name = "core"
enable_smooth_scrolling = false
EOM
echo "$TXT" >> ~/spacevim.toml
cat ~/spacevim.toml >> ~/.SpaceVim.d/init.toml

#gnu screen if needed
type screen || sudo apt update && sudo apt install -y screen

echo 'echo "ctrl p codespace stop if using vscode ui"' > ~/.local/bin/css; chmod +x ~/.local/bin/css
echo 'set -x; ~/dotfiles-spacemacs/setup.sh sup $1; set +x' > ~/.local/bin/sup; chmod +x ~/.local/bin/sup

#clone other GH repos
#NOTE: requires update to devcontainer.json https://github.com/orgs/community/discussions/36228
cd ~/
git clone https://github.com/pault-tech/dotfiles.git
git clone https://github.com/pault-tech/dotfiles-spacemacs.git

