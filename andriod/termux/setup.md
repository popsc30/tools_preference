## setup termux

### enable sshd 
```
pkg install openssh
```

### make the .bash_profile
```
cat > .bash_profile
#!usr/bin
#user alias
alias ll='ls -la'
alias grep='grep --color=auto'
alias ftp='tcpsvd -vE 0.0.0.0 1024 ftpd -w ./storage/shared'
#alias sharefile='filebrowser -r ~/storage/shared'

#function shortcuts
function rddev(){
  if [ ! -d ~/storage/shared/research_dev ]; then
    mkdir ~/storage/shared/research_dev
  fi
	cd ~/storage/shared/research_dev
}
function findfile(){
	find ~/storage/shared/ -iname *$1*
}

```
### edit extra-keys
```
mkdir ~/.termux && vi ~/.termux/termux.properties

extra-keys = [['ESC','|','-','HOME','UP','END','PGUP'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN']]

```
### to enable sd storage
termux-setup-storage
