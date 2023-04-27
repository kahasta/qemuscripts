if [ -n "$1" ]; then
    if [ -n "$2" ]; then
qemu-img create -f qcow2 -o size=$1 /mnt/games/Virt/$2.qcow2
    else
	echo "Error: not two parameters"
	echo "first: size disk example [35G]"
	echo "second: name disk example [Debian]"
    fi
fi

