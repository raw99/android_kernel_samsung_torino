KERNEL=zImage
RAMDISK=ramdisk.gz
NAME=boot.img
MD5=`md5sum $KERNEL | awk '{print $1}'`;
./mkbootimg --kernel $KERNEL --ramdisk $RAMDISK --base 0x81600000 --kernelMD5 $MD5 -o $NAME;
echo "good"
