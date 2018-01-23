## Functions
function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
 else
    if [ -f $1 ] ; then
        # NAME=${1%.*}
        # mkdir $NAME && cd $NAME
        case $1 in
          *.tar.bz2)   tar xvjf ../$1    ;;
          *.tar.gz)    tar xvzf ../$1    ;;
          *.tar.xz)    tar xvJf ../$1    ;;
          *.lzma)      unlzma ../$1      ;;
          *.bz2)       bunzip2 ../$1     ;;
          *.rar)       unrar x -ad ../$1 ;;
          *.gz)        gunzip ../$1      ;;
          *.tar)       tar xvf ../$1     ;;
          *.tbz2)      tar xvjf ../$1    ;;
          *.tgz)       tar xvzf ../$1    ;;
          *.zip)       unzip ../$1       ;;
          *.Z)         uncompress ../$1  ;;
          *.7z)        7z x ../$1        ;;
          *.xz)        unxz ../$1        ;;
          *.exe)       cabextract ../$1  ;;
          *)           echo "extract: '$1' - unknown archive method" ;;
        esac
    else
        echo "$1 - file does not exist"
    fi
fi
}

function updupgr {
YUM_CMD=$(which yum)
APT_GET_CMD=$(which apt-get)

if [[ ! -z $YUM_CMD ]]; then
   sudo	yum update
elif [[ ! -z $APT_GET_CMD ]]; then
   sudo apt-get update && sudo apt-get upgrade
else
	echo "error can't update"
	exit 1;
fi
}

function clean {
YUM_CMD=$(which yum)
APT_GET_CMD=$(which apt-get)

if [[ ! -z $YUM_CMD ]]; then
	sudo yum clean all --enablerepo=*
elif [[ ! -z $APT_GET_CMD ]]; then
	sudo apt-get autoclean && sudo apt-get autoremove
else
echo "error can't clean"
exit 1;
fi
}

psmem() {
  ps aux  | awk '{print $6/1024 " MB\t\t" $11}'  | sort -n
}

killvpn() {
 sudo kill $(pgrep pulsesvc); sleep 3; sudo route -n
}

whichterm(){
 ps -o 'cmd=' -p $(ps -o 'ppid=' -p $$)
}

dscleanup(){
	sudo docker rm -v $(sudo docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
	sudo docker rmi $(sudo docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
}

dstats(){
	sudo docker stats $(sudo docker ps --format '{{.Names}}')
}

fixsound(){
pulseaudio -k && sudo alsa force-reload
}
