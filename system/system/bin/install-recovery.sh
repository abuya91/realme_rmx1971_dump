#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:cb89b7373bcd4a8da22e1b5347a8b5a163994817; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:5ac5a4f210cacfa9b48905b3f2ba480e69f46d73 EMMC:/dev/block/bootdevice/by-name/recovery cb89b7373bcd4a8da22e1b5347a8b5a163994817 67108864 5ac5a4f210cacfa9b48905b3f2ba480e69f46d73:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
