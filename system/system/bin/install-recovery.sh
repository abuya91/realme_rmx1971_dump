#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:cc8ffd28d115534c4305cfbc063cb1eabc1f41a3; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:22719f1dfdc46ed052a0d68431cbdf2974501434 EMMC:/dev/block/bootdevice/by-name/recovery cc8ffd28d115534c4305cfbc063cb1eabc1f41a3 67108864 22719f1dfdc46ed052a0d68431cbdf2974501434:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
