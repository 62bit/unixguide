# Unixguide
You are on the dark side! Here is the guide!

After installing your debian based distro, these are things that you need to get done. 

## Quick start:
```
$ sudo apt install git
$ git clone https://github.com/62bit/unixguide.git
```

## General programs:
```
$ sudo apt update && sudo apt install -y lxde gcc g++ gdb emacs playerctl git clang-format speedcrunch flameshot rofi neofetch gpaste
```
	
```
$ sudo snap install spotify discord code whatsdesk
```

## LXDE setup:
Replace file on path : `/home/username/.config/lxsession/LXDE/autostart` with `unixguide/lxde/autostart` <br/>
Replace file on path : `/home/username/.config/openbox/` with `unixguide/lxde/lxde-rc.xml` .

## Step 3 (Emacs setup):
Create `init.el` file in `~/.emacs.d/` and put these lines in it:
```
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
```
Open Emacs and install these packages:
```
smex
use-package
multiple-cursors
clang-format
auto-complete
autopair
```
Replace `init.el` with `unixguide/emacs/init.el`. <br/>
Copy `unixguide/emacs/black-theme.el` to `~/.emacs.d/`.  <br/>
Copy `unixguide/.clang-format` to our home directory. <br/>
Restart Emacs and select `black` theme.

## Bash setup:
Create and run this script:
```
if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi
echo 'set completion-ignore-case On' >> ~/.inputrc
```

Add these lines into  `.bashrc`: <br/>
```
alias cls=clear
alias dbg=gdb
```

## i3 Setup:
Install i3 and i3blocks `sudo apt install i3 i3blocks` <br/>
Set i3 configuration to `unixguide/i3/config`. <br/>
Add `unixguide/i3/i3blocks.conf` to `~/.config/i3/`. <br/>
