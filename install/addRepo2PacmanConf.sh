#!/bin/bash

cd ~/

if [[ "$1" == "dev" ]]; then
	echo "Automatically adding Valen Repo to your /etc/pacman.conf"
	curl https://raw.githubusercontent.com/keyaedisa/valen_repo/master/README.md
	sed -n '19,22p' README.md >> /etc/pacman.conf
	rm README.md
	echo "Updating pacman databases"
	wget https://raw.githubusercontent.com/keyaedisa/valen_repo/master/install/repo-Arch-public-key.gpg
	pacman-key -a repo-Arch-public-key.gpg
	pacman-key --finger w0rldEater
	pacman-key --lsign-key w0rldEater
	rm repo-Arch-public-key.gpg
	pacman -Sy
else
	echo "Automatically adding Valen Repo to your /etc/pacman.conf"
	curl https://raw.githubusercontent.com/keyaedisa/valen_repo/master/README.md
	sed -n '12,15p' README.md >> /etc/pacman.conf
	rm README.md
	echo "Updating pacman databases"
	wget https://raw.githubusercontent.com/keyaedisa/valen_repo/master/install/repo-Arch-public-key.gpg
	pacman-key -a repo-Arch-public-key.gpg
	pacman-key --finger w0rldEater
	pacman-key --lsign-key w0rldEater
	rm repo-Arch-public-key.gpg
	pacman -Sy
fi
