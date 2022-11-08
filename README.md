# valen_repo
Feel free to look but do not clone

This is where I host packages I created.

To add to your system add below to your /etc/pacman.conf

# Valen Repository

[valen_repo]

SigLevel = PackageRequired

Server = https://keyaedisa.github.io/$repo/$arch

Remove the empty lines inbetween so it looks like the other repos in your pacman.conf
