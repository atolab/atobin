
# Script to generate the debs pakages for zenohc-dev

VERSION="0.5.0"
MAINDIR="libzenohpico"

echo "  Creating libzenohpico deb structure .."

# create deb structure for the deb package

mkdir -p $MAINDIR-$VERSION/DEBIAN
mkdir -p $MAINDIR-$VERSION/usr/local/lib
mkdir -p $MAINDIR-$VERSION/usr/local/include

 echo "  Creating control file ..."

  echo "Package: $MAINDIR " >> control
  echo "Version: $VERSION " >> control
  echo "Section: custom " >> control
  echo "Priority: optional" >> control
  echo "Architecture: all" >> control
  echo "Essential: no" >> control
  echo "Installed-Size: 1024" >> control
  echo "Depends: " >> control
  echo "Maintainer: ATO Team geeks@adlink-labs.tech" >> control
  echo "Description: $MAINDIR deb package" >> control

  mv control $MAINDIR-$VERSION/DEBIAN/

echo "  Copying headers and binaries files ..."

# i need to do a git clone and then look for the includes folder

git clone -b dev git@github.com:eclipse-zenoh/zenoh-pico.git
cp -r zenoh-pico/include $MAINDIR-$VERSION/usr/local/
#cp zenoh-pico/include/zenoh-pico.h $MAINDIR-$VERSION/usr/local/include/zenoh-pico.h


cd zenoh-pico
make
cp ./build/libzenohpico.so ../$MAINDIR-$VERSION/usr/local/lib
cd ../

echo "  Creating the .deb package ... "

dpkg -b ./$MAINDIR-$VERSION ./libzenohpico.deb

rm -rf zenoh-pico
rm -rf ./$MAINDIR-$VERSION

