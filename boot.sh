if [ -n "$1" ];
then
    if [ -n "$2" ];
       then
qemu-system-x86_64 -smp 2 -enable-kvm -boot d -cdrom $1 -m 4096 -hda $2
fi
else
    echo "Error: two parameters path1 and path2"
fi
