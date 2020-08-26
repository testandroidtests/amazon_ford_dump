#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:5246976:789ffd3dd08371d7fa7d56123a49ffd548097559; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:4788224:28577eaee073438a4b3f6aced12073693944d93e EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery 789ffd3dd08371d7fa7d56123a49ffd548097559 5246976 28577eaee073438a4b3f6aced12073693944d93e:/system/recovery-from-boot.p && echo "
Installing new recovery image: succeeded
" >> /cache/recovery/log || echo "
Installing new recovery image: failed
" >> /cache/recovery/log
else
  log -t recovery "Recovery image already installed"
fi
