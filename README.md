# Unixguide
You are on the dark side! Here is the guide!

After installing your debian based distro, these are things that you need to get done. 

## Quick start:
```
$ sudo apt install git
$ git clone https://github.com/62bit/unixguide.git
```

## Step 1 (Install Programs):
```
$ sudo apt update && sudo apt install -y lxde gcc g++ gdb emacs git clang-format speedcrunch flameshot rofi neofetch
```
	
```
$ sudo snap install spotify discord code whatsdesk
```

## Step 2 (LXDE setup):
Replace file on path : `/home/username/.config/lxsession/LXDE/autostart` with `unixguide/.configs/autostart` <br/>
Replace file on path : `/home/username/.config/openbox/` with `unixguide/.configs/lxde-rc.xml` .

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

## Step 4 (Bash setup):
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

## TODO : i3 setup