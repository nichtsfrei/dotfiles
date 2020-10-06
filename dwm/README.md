# requirements

```
sudo dnf install xorg-x11-server-devel NetworkManager-tui google-noto-emoji-fonts emoji-picker xorg-x11-fonts-100dpi feh libXinerama-devel libXft-devel
```

# apply patches

```
cd ~/src/suckless/dwm/
git apply ~/src/nichtsfrei/dotfiles/dwm/dwm-vm_tile-20200926-401fd59.diff

```
# create patch
```
git format-patch --stdout HEAD^ > dwm-vm_tile-(date '+%Y%m%d')-(git rev-parse --short HEAD).diff

```
