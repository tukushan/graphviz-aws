#!/bin/bash
################
# Download the AWS icons and conver them to a dot/graphviz friendly format
################

ICONS_URL='https://s3-us-west-2.amazonaws.com/awswebanddesign/Architecture+Icons/AWS-Arch-Icon-Sets_Feb-18/PNG%2C+SVG%2C+EPS_18.02.22.zip'
ICONS_DIR=AWS-Arch-Icon-Sets_Feb-18

echo -n "Downloading AWS Simple Icons    "
if [ ! -f "$ICONS_DIR.zip" ];then
   wget $ICONS_URL -O "$ICONS_DIR.zip" > /dev/null
   echo "[DONE]"
else
   echo "[Skipped]"
fi

echo -n "Unzipping AWS Simple Icons    "
if [ ! -d "$ICONS_DIR" ];then
   unzip "$ICONS_DIR.zip" > /dev/null
   mv "PNG, SVG, EPS" "$ICONS_DIR"
   echo "[DONE]"
else
   echo "[Skipped]"
fi

echo -n "Deleting MACOSX files    "
if [ -d '__MACOSX' ];then
   rm -rf __MACOSX
   echo "[DONE]"
else
   echo "[Skipped]"
fi

echo -n "Installing librsvg    "
if [[ "$OSTYPE" == "darwin"* ]]; then
   brew ls librsvg > /dev/null 2>&1
   if [ $? -ne 0 ];then
      brew install librsvg
      echo "[DONE]"
   else
      echo "[Skipped]"
   fi
else
   dpkg -l librsvg2-bin 2>&1 > /dev/null
   DPKG_RC=$?
   if [ $DPKG_RC -ne 0 ];then
      sudo apt-get install librsvg2-bin -y
      echo "[DONE]"
   else
      echo "[Skipped]"
   fi
fi

TOTAL=0
for SVG_FILE_ in $(find "$ICONS_DIR" -name \*svg | tr ' ' ':::' )
do
    SVG_FILE=$(echo $SVG_FILE_ |tr ':::' ' ')
    if [ ! -f "$SVG_FILE" ];then
        echo "Skippping '$SVG_FILE'"
        continue
    fi
    PNG_FILE=$(echo $SVG_FILE | sed 's/svg$/png/')

    if [ ! -f "$PNG_FILE" ];then
	echo -n "Converting '$SVG_FILE'   "
	rsvg-convert "$SVG_FILE" -o "$PNG_FILE"
	echo "[DONE]"
    let TOTAL+=1
    fi
done

echo "Images converted: $TOTAL"
