#!/bin/bash
	clear
# Update System
	echo "Updating system..."
	echo "--------------------------------------------------------"
	sudo apt -y update
	sudo apt -y full-upgrade
	echo ""
	echo ""
	echo ""
	echo ""
# Enable PPAs
	echo "Enabling PPAs..."
	echo "--------------------------------------------------------"
	sudo apt -y install \
	software-properties-common \
	apt-transport-https
	echo ""
	echo ""
	echo ""
	echo ""
# Install compilers and tools, build-essentials
	echo "Installing build-esentials"
	echo ""
	sudo apt -y install build-essential
	echo ""
	echo ""
	echo ""
	echo ""
# Install Gufw Firewall
	echo "Installing Gufw Firewall..."
	echo "--------------------------------------------------------"
	sudo apt -y install gufw
	echo ""
	echo ""
	echo ""
	echo ""
# Install git
	echo "Installing git"
	echo "--------------------------------------------------------"
	sudo apt -y install git
	echo ""
	echo ""
	echo ""
	echo ""
# Install vim, ranger, htop, lnav
	echo "Installing vim, ranger, htop, lnav, python3-pip..."
	echo "--------------------------------------------------------"
	sudo apt -y install \
	vim \
	ranger \
	htop \
	lnav \
	pytho3-pip
	echo ""
	echo ""
	echo ""
	echo ""
# Install Gnome Software
	echo "Installing Gnome Software..."
	echo "--------------------------------------------------------"
	sudo apt -y install \
	gdebi \
	gnome-shell-extensions \
	gnome-system-monitor \
	gnome-disk-utility \
	gparted
	echo ""
	echo ""
	echo ""
	echo ""
# Install Chromium
	echo "Installing Chromium..."
	echo "--------------------------------------------------------"
	sudo apt -y install chromium-browser
	echo ""
	echo ""
	echo ""
	echo ""
# Install Firefox
	echo "Installing Firefox..."
	echo "--------------------------------------------------------"
	sudo apt -y install firefox
	echo ""
	echo ""
	echo ""
	echo ""
# Install Support for exfat filesystem
	echo "Installing Support for exfat filesystem..."
	echo "--------------------------------------------------------"
	sudo apt -y install \
	exfat-fuse \
	exfat-utils \
	cifs-utils
	echo ""
	echo ""
	echo ""
	echo ""
# Install Support for Archive Formats
	echo "Installing Support for Archive Formats"
	echo "--------------------------------------------------------"
	sudo apt -y install \
	zip \
	unzip \
	p7zip \
	p7zip-rar \
	rar \
	unrar
	echo ""
	echo ""
	echo ""
	echo ""
# Install Visual Studio
	echo "Installing Visual Studio"
	echo "--------------------------------------------------------"
	sudo snap install code-insiders --classic
	code-insiders --install-extension juanblanco.solidity
	code-insiders --install-extension xgwang.mythril
	code-insiders --install-extension coenraads.bracket-pair-colorizer-2
	code-insiders --install-extension dbaeumer.vscode-eslint
	code-insiders --install-extension esbenp.prettier-vscode
	code-insiders --install-extension burkeholland.simple-react-snippets
	echo ""
	echo ""
	echo ""
	echo ""
# Install Nodejs
	echo "Installing nodejs"
	echo "--------------------------------------------------------"
	sudo apt -y install \
	nodejs \
	npm
	echo ""
	echo ""
	echo ""
	echo ""
# Install Solidity compiler
	echo "Installing solc"
	echo "--------------------------------------------------------"
	sudo npm install -g solc@0.4.24
	echo ""
	echo ""
	echo ""
	echo ""
# Install Web3
	echo "Installing web3"
	echo "--------------------------------------------------------"
	sudo npm install -g web3
	echo ""
	echo ""
	echo ""
	echo ""
# Install Truffle
	echo "Installing truffle"
	echo "--------------------------------------------------------"
	sudo npm install -g truffle@4.1.14
	echo ""
	echo ""
	echo ""
	echo ""
# Install Ganache
	echo "Installing Ganache-cli"
	echo "--------------------------------------------------------"
	sudo npm install -g ganache-cli
	sudo wget -P $HOME/.local/bin https://github.com/trufflesuite/ganache/releases/download/v1.3.0/ganache-1.3.0-x86_64.AppImage
	sudo chmod a+x $HOME/.local/bin/ganache-1.3.0-x86_64.AppImage
	echo ""
	echo ""
	echo ""
	echo ""
# Install Mocha & Chai
	echo "Installing mocha and chai"
	echo "--------------------------------------------------------"
	sudo npm install -g mocha chai
	echo ""
	echo ""
	echo ""
	echo ""
# Install Request
	echo "Installing Request http server"
	echo "--------------------------------------------------------"
	sudo npm install -g request
	echo ""
	echo ""
	echo ""
	echo ""
# Install Express 
	echo "Installing Express website framework "
	echo "--------------------------------------------------------"
	sudo npm install -g express
	echo ""
	echo ""
	echo ""
	echo ""
# Install React 
	echo "Installing React"
	echo "--------------------------------------------------------"
	sudo npm install -g create-react-app
	echo ""
	echo ""
	echo ""
	echo ""
# Install remixd
	echo "Installing remixd"
	echo "--------------------------------------------------------"
	sudo npm install -g remixd
	echo ""
	echo ""
	echo ""
	echo ""
# Install colored logs and outputs
	echo "Installing log-color-highlight"
	echo "--------------------------------------------------------"
	sudo npm install -g log-color-highlight
	sudo npm install -g chalk
	echo ""
	echo ""
	echo ""
	echo ""
# Install typescript
#	echo "Installing typescript"
#	echo "--------------------------------------------------------"
#	sudo npm install -g typescript
#	echo ""
#	echo ""
#	echo ""
#	echo ""
# Install Mythril
	echo "Installing Mythril"
	echo "--------------------------------------------------------"
	pip3 install mythril
# Install Alastria testnet regular node
	echo "Installing Alastria testnet regular node"
	echo "--------------------------------------------------------"
	wget -q -O - https://deb.alastria.tools/alastria.tools.key | sudo apt-key add -
	echo "deb https://deb.alastria.tools generic main" | sudo tee -a /etc/apt/sources.list
	sudo apt-get update
	sudo apt-get install alastria-testnet-regular-geth
	echo ""
	echo ""
	echo ""
	echo ""
# Fix Broken Packages 
	echo "Fixing the broken packages..."
	echo "--------------------------------------------------------"
	sudo apt -y -f install
	echo ""
	echo ""
	echo ""
	echo ""
# Clean-Up Junk 
	echo "Cleaning-up junk..."
	echo "--------------------------------------------------------"
	sudo apt -y autoremove
	sudo apt -y autoclean
	echo ""
	echo ""
	echo "Finished!"
	echo ""
	echo ""
	echo ""
	echo ""
