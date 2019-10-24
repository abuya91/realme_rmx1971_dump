#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:0413f49aec761cdd5a6e4daaa73bdc7d6d16ff40; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:c19f0b0b1423a3fd4d0cabf179a75772243d43c6 EMMC:/dev/block/bootdevice/by-name/recovery 0413f49aec761cdd5a6e4daaa73bdc7d6d16ff40 67108864 c19f0b0b1423a3fd4d0cabf179a75772243d43c6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
