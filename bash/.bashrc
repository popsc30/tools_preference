#!/usr/bin
# for mac
#shortcuts for quick connections
function myop3(){
	ftp u0_a116@192.168.43.166 1024
}

function sshop3(){
	ssh user@192.168.2.13 -p 8222
}

# Set Proxy
function setproxy() {
    export {http,https,ftp}_proxy="http://127.0.0.1:1087"
    export {HTTP,HTTPS,FTP}_PROXY="https://127.0.0.1:1087"
}

# Unset Proxy
function unsetproxy() {
    unset {http,https,ftp}_proxy
    unset {HTTP,HTTPS,FTP}_PROXY
}

# start mysql
function startmysql(){
	brew services start mysql@5.6
}
# stop mysql
function stopmysql(){
	brew services stop mysql@5.6
}
function portlistening() {
    lsof -nP -i4TCP:"$1" | grep LISTEN
}
# get absolute path
function fullpath(){
	find $PWD -type f | grep "$1"
}
function findfilebypath(){
    if [ -z "$2" ]; then
        echo "$(tput setaf 3)YOU MUST SPECIFIC THE SECOND PARAMETER!"
        return
    fi
    find "$2" -iname *$1* | grep $1
}
function qrcode(){
	echo "$1" | curl -F-=\<- qrenco.de
}
