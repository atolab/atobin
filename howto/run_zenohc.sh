
# Script to generate the debs pakages for zenohc-dev

VERSION="0.3.0"
MAINDIR="zenohc-dev"

echo "  Creating zenohc-dev deb structure .."

# create deb structure for the deb package

mkdir $MAINDIR-$VERSION
mkdir $MAINDIR-$VERSION/DEBIAN
mkdir $MAINDIR-$VERSION/usr
mkdir $MAINDIR-$VERSION/usr/local
mkdir $MAINDIR-$VERSION/usr/local/lib
mkdir $MAINDIR-$VERSION/usr/local/include

 echo "  Creating control file ..."

  echo "Package: $MAINDIR " >> control
  echo "Version: $VERSION " >> control
  echo "Section: custom " >> control
  echo "Priority: optional" >> control
  echo "Architecture: all" >> control
  echo "Essential: no" >> control
  echo "Installed-Size: 1024" >> control
  echo "Depends: libev4" >> control
  echo "Maintainer: Ivan Paez geeks@adlink-labs.tech" >> control
  echo "Description: $MAINDIR deb package" >> control

  mv control $MAINDIR-$VERSION/DEBIAN/

echo "  Copying headers and binaries files ..."

# i need to do a git clone and then look for the includes folder

git clone https://github.com/atolab/zenoh-c.git
cp -r zenoh-c/include $MAINDIR-$VERSION/usr/local/include

cd zenoh-c
make
cp ./build/libzenohc.so ../$MAINDIR-$VERSION/usr/local/lib
cd ../

echo "  Creating the .deb package ... "

dpkg -b ./$MAINDIR-$VERSION ./zenohc-dev.deb

rm -rf zenoh-c
rm -rf ./$MAINDIR-$VERSION

