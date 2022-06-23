programs:

* bootloader: `grub` `efibootmgr`
* `git` `base-devel` (includes `sudo`)
* `man-db` `man-pages`
* for networking: `dhcpcd` in VMs, `networkmanager` on real computers
* `neofetch`
* `openssh`
* text editor: `vim`
* if ssh'ing into: terminfo for my terminal emulator
* `gpm`, `gpm-vm`<sup>AUR</sup> if on VM
* `rsync`
* `exa`

desktop:

* wm: `dwm`, also `slstatus`, `dmenu`, `slock`, (these aren't from AUR, they're built manually so I can tweak them, see [suckless](https://github.com/mekb-turtle/suckless))
* theming: `yaru-colors-gtk-theme-git`<sup>AUR</sup> (Yaru-Lavender-dark), `deepin-icon-theme` (bloom-dark)
* fonts: noto-fonts-cjk, `ttf-ubuntu-font-family`, `ttf-twemoji`<sup>AUR</sup>, `ttf-fira-code`
* terminal emulator: `kitty`
* xorg: `xorg-server` `xorg-setxkbmap` `xorg-xev` `xorg-xinit` `xorg-xinput` `xorg-xmodmap` `xorg-xprop` `xorg-xset` `xorg-xsetroot` `xorg-xrandr`

things i typically do after setting up an artix install:

* `rm -rfv /etc/bash`, it messes up my environment variables
