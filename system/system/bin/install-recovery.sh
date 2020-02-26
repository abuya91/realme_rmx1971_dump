#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:5fd9cc1aa03415826a39a6043a2612765ce8272e; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:054d0b5897e46957839678ad283bf67437eaa8ad EMMC:/dev/block/bootdevice/by-name/recovery 5fd9cc1aa03415826a39a6043a2612765ce8272e 67108864 054d0b5897e46957839678ad283bf67437eaa8ad:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
