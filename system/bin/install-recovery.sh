#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:19375404:7fd8baf34a5973bb9d2eee4b89711f2c0da0a8ef; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:13202728:0e67ed36661d9d4eb906c142b0873c06aee005cf EMMC:/dev/block/bootdevice/by-name/recovery 7fd8baf34a5973bb9d2eee4b89711f2c0da0a8ef 19375404 0e67ed36661d9d4eb906c142b0873c06aee005cf:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
