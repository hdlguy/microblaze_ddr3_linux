# Linux installation on the Arty-35t
https://www.hackster.io/whitney-knitter/linux-on-microblaze-artya7-linux-design-in-petalinux-2022-1-eaa559

## Petalinux build

petalinux-create --force --type project --template microblaze --name proj1

cp system-user.dtsi proj1/project-spec/meta-user/recipes-bsp/device-tree/files/

cd proj1

petalinux-config --get-hw-description=../../implement/results/

    * Yocto Settings -> Add pre-mirror url -> change http: to https:
    * Yocto Settings -> Network State Feeds url -> change http: to https:
    * save and exit

petalinux-build -c bootloader -x distclean

petalinux-config -c kernel --silentconfig

petalinux-config -c rootfs

petalinux-build

petalinux-boot --qemu --kernel

    ctrl-A X to terminate

petalinux-boot --jtag --fpga
petalinux-boot --jtag --fpga --bitstream ../../implement/results/top.bit


petalinux-boot --jtag --kernel





