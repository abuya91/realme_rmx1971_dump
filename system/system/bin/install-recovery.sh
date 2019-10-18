#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:a905e5ef40be74a183a53b424a21e302fb524785; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:e45aaa5302b92a20113efd0898470c20a22db57c EMMC:/dev/block/bootdevice/by-name/recovery a905e5ef40be74a183a53b424a21e302fb524785 67108864 e45aaa5302b92a20113efd0898470c20a22db57c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
