export KBUILD_BUILD_USER="Mohancm"
export KBUILD_BUILD_HOST="TEAM_ZERO"
export CROSS_COMPILE="/home/easycompile2019/aarch64-linux-android-4.9/bin/aarch64-linux-android-"

read -p "Do you want to clean" clean
[ $clean = "y" ] && {
make clean && make mrproper
mkdir out
}

make ARCH=arm64 O=out p1m_defconfig;make ARCH=arm64 -j30 O=out ;
