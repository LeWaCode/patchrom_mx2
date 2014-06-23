#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
BUILD_OUT=out

SEP_FRAME="framework2.jar.out"

function removeMzActionBarContainer() {
    for file in `find $1 -name *.smali`
    do
        filename=`basename $file`
        if [ "$filename" == "MzActionBarContainer.smali" ];then
            continue
        fi
        sed -i 's/MzActionBarContainer/ActionBarContainer/g' $file
        if [ "$filename" == "ActionBarContainer.smali" ];then
            cat overlay/ActionBarContainer.part >> $file
        fi
    done
}

if [ $2 = "$BUILD_OUT/framework" ]
then
    removeMzActionBarContainer $2
    #overlay
    cp -f overlay/DownloadManager\$Request.smali $BUILD_OUT/framework/smali/android/app/
    cp -f overlay/ResolverActivity/* $BUILD_OUT/framework/smali/com/android/internal/app/
fi

if [ $2 = "$BUILD_OUT/framework2" ]
then
    # remove all files at out/framework2 those exist in framework.jar.out
	for file2 in `find framework.jar.out -name *.smali`; do
			file=${file2/framework.jar.out/$BUILD_OUT\/framework2}
			echo "rm file: $file"
			rm -rf "$file"
	done

   $APKTOOL d -f $PORT_ROOT/lewa/XHDPI/system/framework/lewa-framework.jar $BUILD_OUT/lewa-framework
   cp -rf $BUILD_OUT/lewa-framework/smali/ $BUILD_OUT/framework2/
fi

if [ $2 = "$BUILD_OUT/android.policy" ]
then
    removeMzActionBarContainer $2
fi

if [ $2 = "$BUILD_OUT/services" ]
then
    #overlay
    cp -f overlay/UsbDeviceManager\$UsbHandler.smali $BUILD_OUT/services/smali/com/android/server/usb/
fi
