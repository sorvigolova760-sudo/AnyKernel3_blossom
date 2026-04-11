### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

properties() { '
kernel.string=White Kernel Project - Blossom || Infinity
do.devicecheck=1
do.cleanup=1
do.cleanuponabort=0
patch_cmdline "androidboot.selinux" "androidboot.selinux=permissive"
do.modules=1
device.name1=dandelion
device.name2=angelica
device.name3=angelican
device.name4=angelicain
device.name5=cattail
device.name6=blossom
supported.versions=
'; }

boot_attributes() {
set_perm_recursive 0 0 755 644 $RAMDISK/*;
set_perm_recursive 0 0 750 750 $RAMDISK/init* $RAMDISK/sbin;
}

BLOCK=/dev/block/by-name/boot;
IS_SLOT_DEVICE=0;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;
NO_BLOCK_DISPLAY=1

. tools/ak3-core.sh;

dump_boot;

write_boot;
