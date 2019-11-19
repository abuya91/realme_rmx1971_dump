#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:0f105ba79d5609f0e7803fd3192a30f576035d43; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:2079c4b66716462e567e5411f486e2d97f9db7c3 EMMC:/dev/block/bootdevice/by-name/recovery 0f105ba79d5609f0e7803fd3192a30f576035d43 67108864 2079c4b66716462e567e5411f486e2d97f9db7c3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
