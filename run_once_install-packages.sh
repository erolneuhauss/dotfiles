# installs packages
sudo apt install -y curl
sudo add-apt-repository ppa:font-manager/staging
sudo add-apt-repository ppa:git-core/ppa
sudo apt-add-repository ppa:umang/indicator-stickynotes
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
sudo apt update
sudo apt install \
	apache2-utils \
	apt-file \
	apt-transport-https \
	bash-completion \
	bb \
	bc \
	build-essential \
	ca-certificates \
	cloud-guest-utils \
	cmake \
	cowsay \
	default-jre \
	direnv \
	dmidecode \
	dstat \
	exa \
	ffmpeg \
	fio \
	firefox-geckodriver \
	font-manager \
	fonts-firacode \
	fonts-inconsolata \
	fonts-noto-color-emoji \
	fonts-powerline \
	fortunes \
	fortunes-bofh-excuses \
	fortunes-de \
	fortunes-debian-hints \
	fortunes-min \
	fortunes-ubuntu-server \
	gdebi \
	gettext \
	git \
	glances \
	gnome-online-accounts \
	gnome-shell-extension-system-monitor \
	gnome-shell-extensions \
	gnome-shell-extensions-gpaste \
	gnupg \
	golang \
	google-cloud-sdk \
	google-drive-ocamlfuse \
	gpaste \
	guvcview \
	hardinfo \
	hdparm \
	htop \
	htpasswd \
	httpie \
	hwinfo \
	imagemagick \
	indicator-stickynotes \
	iozone3 \
	jq \
	lshw \
	lsscsi \
	lzma \
	mlocate \
	ncdu \
	neofetch \
	neovim \
	nmap \
	nodejs \
	npm \
	nvme-cli \
	openssh-server \
	p7zip-full \
	packer \
	pciutils \
	pv \
	pwgen \
	pwget \
	python3-venv \
	ranger \
	retext \
	ripgrep \
	rsync \
	ruby \
	s3cmd \
	sdparm \
	smartmontools \
	snap \
	stress \
	tcpdump \
	telnet \
	terminator \
	tmux \
	toilet \
	traceroute \
	usbutils \
	valac \
	vice \
	vim \
	xcowsay \
	xxd \
	xz-utils \
	yarnpkg

sudo snap install pycharm-community --classic
sudo snap install universal-ctags
sudo snap install helm --classic
