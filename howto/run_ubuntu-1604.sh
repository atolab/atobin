#Script to generate the deb package for ubuntu-16.04

VERSION="0.3.0"
MAINDIR="ubuntu-1604"
DEBPACKS="zenohd yaksd libzenohc"
SERVS="zenoh yaks zenoh-c"

mkdir $MAINDIR

for DEB in $DEBPACKS; do

  echo "  Creating $DEB deb structure ..."
  # create deb structure for each deb package
  mkdir $MAINDIR/$DEB-$VERSION
  mkdir $MAINDIR/$DEB-$VERSION/DEBIAN
  mkdir $MAINDIR/$DEB-$VERSION/usr

  echo "Package: $DEB " >> control
  echo "Version: $VERSION " >> control
  echo "Section: custom " >> control
  echo "Priority: optional" >> control
  echo "Architecture: all" >> control
  echo "Essential: no" >> control
  echo "Installed-Size: 1024" >> control
  echo "Depends: libev4" >> control
  echo "Maintainer: geeks@adlink-labs.tech" >> control
  echo "Description: $DEB deamon" >> control

  mv control $MAINDIR/$DEB-$VERSION/DEBIAN/

done

echo " Copying binaries files ..."

wget -O zenohd  https://github.com/atolab/atobin/blob/master/zenoh/latest/ubuntu/16.40/zenohd?raw=true
chmod +x zenohd
mkdir $MAINDIR/zenohd-$VERSION/usr/bin
mv zenohd $MAINDIR/zenohd-$VERSION/usr/bin

wget -O yaksd https://github.com/atolab/atobin/blob/master/yaks/latest/ubuntu/16.40/yaksd?raw=true
chmod +x yaksd
mkdir $MAINDIR/yaksd-$VERSION/usr/bin
mv yaksd $MAINDIR/yaksd-$VERSION/usr/bin


wget -O libzenohc.so https://github.com/atolab/atobin/blob/master/zenoh-c/latest/ubuntu/16.04/libzenohc.so?raw=true 
chmod +x libzenohc.so
mkdir $MAINDIR/libzenohc-$VERSION/usr/local/
mkdir $MAINDIR/libzenohc-$VERSION/usr/local/lib/
mv libzenohc.so $MAINDIR/libzenohc-$VERSION/usr/local/lib/


echo " Creating $DEB deb package ... "

for DEB in $DEBPACKS; do

  dpkg-deb --build $MAINDIR/$DEB-$VERSION

done
