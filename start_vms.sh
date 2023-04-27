if [ -n "$1" ];
then
    qemu-system-x86_64 -hda /mnt/games/Virt/$1.qcow2 -m 8192 -enable-kvm -chardev qemu-vdagent,id=ch1,name=vdagent,clipboard=on \
  -device virtio-serial-pci,id=virtio-serial0,max_ports=16,bus=pci.0,addr=0x5 \
  -chardev spicevmc,name=vdagent,id=vdagent
  -device virtserialport,nr=1,bus=virtio-serial0.0,chardev=vdagent,\
    name=com.redhat.spice.0
  -device ac97 -vga qxl \
  -netdev user,id=n1,ipv6=off -device e1000,netdev=n1 -net user,hostfwd=tcp::10022-:22 -net nic
else
echo "no parametr: [name] hdd"
fi
