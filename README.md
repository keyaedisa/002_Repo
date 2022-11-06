# 002_Repo
Feel free to look but do not clone

This is where I host packages I created.

To add to your system add below to your /etc/pacman.conf

\# 002 Repo

[002_Repo]

SigLevel = PackageRequired

Server = https://keyaedisa.github.io/$repo/$arch

Remove the empty lines inbetween so it looks like the other repos in your pacman.conf
