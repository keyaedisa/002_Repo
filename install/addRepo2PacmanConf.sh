#!/bin/bash

echo "Automatically adding Valen Repo to your /etc/pacman.conf"
wget https://raw.githubusercontent.com/keyaedisa/valen_repo/master/README.md
sed -n '11,14p' README.md >> /etc/pacman.conf
rm README.md
echo "Updating pacman databases"
wget https://raw.githubusercontent.com/keyaedisa/valen_repo/master/install/public.key
pacman-key -a public.key
rm public.key
pacman -Sy
