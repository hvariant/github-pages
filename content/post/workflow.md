---
title: "Documenting My Workflow on Archlinux"
date: 2017-12-08T00:51:04+11:00
tags: [archlinux, linux, workflow]
---

In this note I will document softwares/tools that I use on ArchLinux as a reference for future installs.

Pacman/AUR packages
---

From [Arch wiki](https://wiki.archlinux.org/index.php/Pacman/Tips_and_tricks#List_of_installed_packages), to view the list of explicitly installed packages, one can use

```bash
pacman -Qqe > pkglist.txt
```

Aside from the two package groups installed during pacstrap, `base` and `base-devel`, the following pacman packages (sorted by group) are installed:


- Fonts:

```text
noto-fonts
noto-fonts-cjk
noto-fonts-emoji
noto-fonts-extra
ttf-ubuntu-font-family
wqy-bitmapfont
wqy-microhei
wqy-microhei-lite
wqy-zenhei
```

- WM:

```text
pcmanfm
tumbler (thumbnails)
imagemagick
ffmpegthumbnailer
i3-wm (i3 wm)
i3blocks
i3lock
i3status
dmenu
oxygen (theme)
oxygen-icons
oxygen-kde4
breeze
breeze-kde4
qt5ct (qt5 theme engine)
x11-ssh-askpass (x11/xorg)
xarchiver
xfce4-notifyd
xfce4-screenshooter
xorg-server
xorg-xinit
xorg-xprop
xorg-xrandr
xorg-xsetroot
xorg-xwininfo
```

- Document Viewer:

```text
atril
okular
evince
fbreader
```

- Image Viewer:

```text
feh
ristretto
gthumb
```

- Editor:

```text
kate
vim
neovim
python-neovim
python2-neovim
```

- Network:

```text
wget
sshfs
openssh
openvpn
network-manager-applet
networkmanager
networkmanager-openvpn
net-tools (basic tools such as netstat)
autossh (ensure persistent ssh connection)
davfs2
youtube-dl
nfs-utils
```

- Container

```text
docker
nvidia-docker*
```

- Terminal/Shell:

```text
zsh
zsh-syntax-highlighting
konsole
xterm
```

- CUDA:

```text
nvidia
cuda
cudnn
```

- System Maintenance:

```text
smartmontools (monitor harddrive SMART)
rsync (backup)
iotop
htop
lsof
strace
sysstat
cronie (crontab implementation)
acpi
udevil (mount devices without password)
```

- AV:

```text
alsa-utils
pulseaudio
pavucontrol
mpv
```

- Encryption:

```text
cryptomator* (encrypt files on google drive)
veracrypt
keepassx
```

- Misc:

```text
aura-bin* (automated AUR package install/update)
kalu* (looking up ArchLinux news and package update notification)
ntfs-3g (modify ntfs partition)
ibus-rime (input method)
hugo (static site generator)
konversation (irc client)
ledger* (double-entry bookkeeping)
neofetch*
parcellite (clipboard manager)
thunderbird
grive* (sync with google drive)
advcp* (mv/cp with progress bar)
```

- Latex:

```text
texlive-most
texlive-lang
```

\*: AUR packages

Conda packages
---

Install [Anaconda](https://www.anaconda.com/download/#linux), then call
[this function](https://github.com/hvariant/dotfiles/blob/13aa7efab7278d1e7b7c9803cb28f3eb61664987/zshrc#L74)
in zsh to setup conda path.

TBC
---
