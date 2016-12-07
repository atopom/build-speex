#/sh/bin

export NDK=/home/wangyanan/android-ndk-r13/
export PLATFORM=$NDK/platforms/android-9/arch-arm
export PREBUILT=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64
export PREFIX=/home/wangyanan/build-speex/android

export CC="$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi-gcc"
export LDFLAGS="--sysroot=$NDK/platforms/android-9/arch-arm/ -L$NDK/platforms/android-9/arch-arm/usr/lib"
export CFLAGS="--sysroot=$NDK/platforms/android-9/arch-arm/"
export AR="$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi-ar"
export PATH=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86/bin/:$PATH


cd /home/wangyanan/build-speex/speex-1.2rc2 && ./configure --prefix=$PREFIX --enable-static --host=arm-linux && make && make install
