#!/usr/bin/env sh
# install prerequisit packages first
# sudo apt-get install -y \
#     apt-transport-https \
#     build-essential \
#     ca-certificates \
#     cmake \
#     curl \
#     fuse \
#     g++ \
#     gcc \
#     gdebi \
#     gnupg \
#     libsquashfuse0 \
#     libx11-dev \
#     libxext-dev \
#     linux-headers-generic  \
#     make \
#     python3-venv \
#     snapd \
#     squashfuse \
#     software-properties-common

# echo "Install virtualisation: libvirt and vagrant"
## Either virtualbox or libvirt so far
## echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian focal contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
## curl -fsSL https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo apt-key add -
## curl -fsSL https://www.virtualbox.org/download/oracle_vbox.asc | sudo apt-key add -
## sudo apt-get update && sudo apt-get install -y virtualbox

# curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
# sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# sudo apt install -y \
#     dnsmasq-base \
#     ebtables \
#     libvirt-clients \
#     libvirt-daemon-system \
#     libvirt-dev \
#     libxml2-dev \
#     libxslt-dev \
#     python3-vagrant \
#     qemu \
#     qemu-kvm \
#     ruby-dev \
#     ruby-libvirt \
#     spice-client-gtk
#     vagrant \
#     vagrant-libvirt \
#     virt-viewer \
#     zlib1g-dev

# vagrant plugin install vagrant-libvirt

# echo "Install tools other than virtualisation"
# sudo apt-get install -y \
#     apache2-utils \
#     apt-file \
#     bash-completion \
#     bb \
#     bc \
#     chktex \
#     golang-cfssl \
#     cloud-guest-utils \
#     cowsay \
#     default-jre \
#     direnv \
#     dmidecode \
#     dstat \
#     ffmpeg \
#     fio \
#     firefox-geckodriver \
#     fonts-powerline \
#     fortunes \
#     fortunes-bofh-excuses \
#     fortunes-de \
#     fortunes-debian-hints \
#     fortunes-min \
#     fortunes-ubuntu-server \
#     gettext \
#     gnome-online-accounts \
#     gnome-shell-extension-system-monitor \
#     gnome-shell-extensions \
#     gnome-shell-extensions-gpaste \
#     golang \
#     golang-cfssl \
#     gpaste \
#     guvcview \
#     hardinfo \
#     hdparm \
#     htop \
#     httpie \
#     hwinfo \
#     imagemagick \
#     iozone3 \
#     jq \
#     keepassxc \
#     lacheck  \
#     lshw \
#     lsscsi \
#     lzma \
#     mlocate \
#     ncdu \
#     neofetch \
#     nmap \
#     openssh-server \
#     p7zip-full \
#     packer \
#     pciutils \
#     pv \
#     pwgen \
#     pwget \
#     ranger \
#     retext \
#     ripgrep \
#     rsync \
#     ruby \
#     ruby \
#     s3cmd \
#     sdparm \
#     shellcheck \
#     smartmontools \
#     stress \
#     tcpdump \
#     telnet \
#     terminator \
#     terraform \
#     tmux \
#     toilet \
#     traceroute \
#     usbutils \
#     valac \
#     vice \
#     vim \
#     xcowsay \
#     xxd \
#     xz-utils \
#     zsh

# sudo snap install helm --classic
# sudo snap install pycharm-community --classic
# sudo snap install universal-ctags
# sudo snap install nvim --classic
# sudo snap install procs --classic

# echo "install hole bunch of python3 modules: glances, bytop, ..."
# pipenv install -r requirements.txt

# echo "Install 'bat' - cat(1) clone with wings"
# cd /tmp
# BAT='bat_0.18.0_amd64.deb'
# curl -fsSLo $BAT https://github.com/sharkdp/bat/releases/download/v0.18.0/$BAT
# sudo gdebi -n $BAT
# rm -f $BAT

# echo "Install 'delta' - A viewer for git and diff output"
# cd /tmp
# DELTA='git-delta_0.7.1_amd64.deb'
# curl -fsSLo $DELTA https://github.com/dandavison/delta/releases/download/0.7.1/$DELTA
# sudo gdebi -n $DELTA
# rm -f $DELTA

# echo "Install 'exa' - is a modern replacement for ls"
# cd /tmp
# EXA='exa_0.9.0-4_amd64.deb'
# curl -fsSLo $EXA http://mirrors.kernel.org/ubuntu/pool/universe/r/rust-exa/$EXA
# sudo gdebi -n $EXA
# rm -f $EXA

# echo "Install 'fd' - a fast and user-friendly alternative to find"
# cd /tmp
# FD='fd_8.2.1_amd64.deb'
# curl -fsSLo $FD https://github.com/sharkdp/fd/releases/download/v8.2.1/$FD
# sudo gdebi -n $FD
# rm -f $FD

# echo "Install kubernetes tool: flux"
# cd /tmp
# wget https://toolkit.fluxcd.io/install.sh
# chmod u+x install.sh
# ./install.sh
# rm -f install.sh

# echo "Install 'yaml query'"
# cd /tmp
# YQ='yq_linux_amd64'
# curl -fsSLo $YQ https://github.com/mikefarah/yq/releases/download/v4.7.1/$YQ
# sudo install -g root -o root $YQ /usr/local/bin/yq
# rm -f $YQ

# echo "Install kubernetes tool: kustomize"
# cd /tmp
# wget "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"
# chmod u+x install_kustomize.sh
# ./install_kustomize.sh
# sudo install -o root -g root -m 0755 kustomize /usr/local/bin/kustomize
# rm ./install_kustomize.sh
# rm kustomize

# echo "Install ripgrep (search tool like ack and grep)"
# cd /tmp
# RG='ripgrep_12.1.0_amd64.deb'
# curl -fsSLo $RG https://github.com/BurntSushi/ripgrep/releases/download/12.1.0/$RG
# sudo gdebi -n $RG
# rm -f $RG

# echo "Install 'webi' (https://webinstall.dev)"
# curl -sS https://webinstall.dev/webi | bash

# echo "Install 'k9s' - Kubernetes CLI To Manage Your Clusters In Style!"
# curl -sS https://webinstall.dev/k9s | bash
# ~/.local/bin/webi k9s

# echo "Install 'kubectx' - Kubernetes Context Switcher"
# curl -sS https://webinstall.dev/kubectx | bash

# echo "Install 'kubens' - Kubernetes Namespace Switcher"
# curl -sS https://webinstall.dev/kubens | bash

# echo "Install nerd-fonts"
# cd /tmp
# git clone --depth 1 https://github.com/ryanoasis/nerd-fonts
# cd nerd-fonts
# ./install.sh DejaVuSansMono

# echo "Install https://github.com/junegunn/vim-plug"
# curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim \
#     --create-dirs \
#     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# echo "Updating plugs..."
# nvim -c 'PlugUpdate' -c '<\CR>' -c 'qa'
# nvim -c 'CocInstall coc-vimtex' -c '<\CR>' -c 'qa'
# nvim -c 'CocInstall coc-jedi' -c '<\CR>' -c 'qa'
# nvim -c 'CocInstall coc-json' -c '<\CR>' -c 'qa'

# echo "Install 'nodjs'"
# curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
# sudo apt-get install -y nodejs
# curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/yarnkey.gpg >/dev/null
# echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
# sudo apt-get update && sudo apt-get install -y yarn

# sudo apt install --reinstall -y nodejs
# sudo npm install -g \
#     bats
#     fixjson \
#     jsonlint \
#     neovim \
#     textlint \
#     tldr

# sudo apt-add-repository -y ppa:umang/indicator-stickynotes
# sudo apt-get install -y indicator-stickynotes

# sudo add-apt-repository -y ppa:font-manager/staging
# sudo apt-get install -y font-manager

# sudo add-apt-repository -y ppa:git-core/ppa
# sudo apt-get install -y git

# sudo add-apt-repository -y ppa:alessandro-strada/ppa
# sudo apt-get install -y google-drive-ocamlfuse

# echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
# sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
# sudo apt-get update && sudo apt-get install -y kubelet=1.19.7-00 kubeadm=1.19.7-00 kubectl=1.19.7-00

# mkdir ~/.zprezto-contrib/
# git clone https://github.com/prezto-contributions/prezto-kubectl.git ~/.zprezto-contrib/kubectl

# echo "Install: Regolith -- a modern desktop environment"
# sudo add-apt-repository ppa:regolith-linux/release
# sudo apt install -y nitrogen compton
# sudo apt install -y regolith-desktop-complete

# echo "Install greenclip for regolith, rofi"
# sudo curl -sSLo /usr/local/bin/greenclip https://github.com/erebe/greenclip/releases/download/4.0/greenclip
# sudo chmod +x /usr/local/bin/greenclip
# systemctl --user enable --now greenclip.service

# Git with gnome-keyring integration
# https://stackoverflow.com/questions/13385690/how-to-use-git-with-gnome-keyring-integration
# GNOME has deprecated libgnome-keyring and replaced it with libsecret
# sudo apt install -y libsecret-1-0 libsecret-1-dev
# sudo bash -c "cd /usr/share/doc/git/contrib/credential/libsecret && make"
# git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret
