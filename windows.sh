qemu-system-x86_64 -hda /mnt/games/Virt/win10.qcow2 -m 8192 -enable-kvm -device ac97 -cpu host -vga qxl -netdev user,id=n1,ipv6=off -device e1000,netdev=n1 -smp 4
