#!/bin/bash

echo "Automatically adding Valen Repo to your /etc/pacman.conf"
wget https://raw.githubusercontent.com/keyaedisa/valen_repo/master/README.md
sed -n '11,14p' README.md >> /etc/pacman.conf
rm README.md
echo "Updating pacman databases"
gpg --keyserver keyserver.ubuntu.com --recv-keys A2D9ED6622D9E188C240702DE848A1C3669D2EBE
pacman-key -r keyserver.ubuntu.com A2D9ED6622D9E188C240702DE848A1C3669D2EBE
pacman -Sy
