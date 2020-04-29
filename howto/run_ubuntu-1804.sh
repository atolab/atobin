#Script to generate the deb package for ubuntu-18.04

VERSION="0.5.0"
MAINDIR="ubuntu-1804"
DEBPACKS="zenohd libzenohc zenoh-http zenoh-storages"

mkdir $MAINDIR

for DEB in $DEBPACKS; do

  echo "  Creating $DEB deb structure ..."
  # create deb structure for each deb package
  mkdir -p $MAINDIR/$DEB-$VERSION/DEBIAN

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

# zenohd-0.5.0 should exist in atobin

wget -O zenohd  https://github.com/atolab/atobin/blob/master/zenoh/latest/ubuntu/18.04/zenohd-0.5.0?raw=true
chmod +x zenohd
mkdir -p $MAINDIR/zenohd-$VERSION/usr/bin
mv zenohd $MAINDIR/zenohd-$VERSION/usr/bin

# libzenohc

wget -O libzenohc.so https://github.com/atolab/atobin/blob/master/zenoh-c/latest/ubuntu/18.04/libzenohc.so?raw=true 
chmod +x libzenohc.so
mkdir -p $MAINDIR/libzenohc-$VERSION/usr/local/lib/
mv libzenohc.so $MAINDIR/libzenohc-$VERSION/usr/local/lib/

# zenoh-http

wget -O zenoh-plugin-http.cmxs https://github.com/atolab/atobin/blob/master/zenoh-http/latest/ubuntu/18.04/zenoh-plugin-http.cmxs?raw=true
chmod +x zenoh-plugin-http.cmxs
mkdir -p $MAINDIR/zenoh-http-$VERSION/usr/local/lib/
mv zenoh-plugin-http.cmxs $MAINDIR/zenoh-http-$VERSION/usr/local/lib/

# zenoh-storages

mkdir -p $MAINDIR/zenoh-storages-$VERSION/usr/local/lib/
wget -O zenoh-plugin-storages.cmxs https://github.com/atolab/atobin/blob/master/zenoh-storages/latest/ubuntu/18.04/zenoh-plugin-storages.cmxs?raw=true
chmod +x zenoh-plugin-storages.cmxs
mv zenoh-plugin-storages.cmxs $MAINDIR/zenoh-storages-$VERSION/usr/local/lib/

wget -O zenoh-storages-be-influxdb.cmxs https://github.com/atolab/atobin/blob/master/zenoh-storages/latest/ubuntu/18.04/zenoh-storages-be-influxdb.cmxs?raw=true
chmod +x zenoh-storages-be-influxdb.cmxs
mv zenoh-storages-be-influxdb.cmxs $MAINDIR/zenoh-storages-$VERSION/usr/local/lib/

wget -O zenoh-storages-be-memory.cmxs https://github.com/atolab/atobin/blob/master/zenoh-storages/latest/ubuntu/18.04/zenoh-storages-be-memory.cmxs?raw=true
chmod +x zenoh-storages-be-memory.cmxs
mv zenoh-storages-be-memory.cmxs $MAINDIR/zenoh-storages-$VERSION/usr/local/lib/

wget -O zenoh-storages-be-postgresql.cmxs https://github.com/atolab/atobin/blob/master/zenoh-storages/latest/ubuntu/18.04/zenoh-storages-be-postgresql.cmxs?raw=true
chmod +x zenoh-storages-be-postgresql.cmxs
mv zenoh-storages-be-postgresql.cmxs $MAINDIR/zenoh-storages-$VERSION/usr/local/lib/

wget -O zenoh-storages-be-sqlite3.cmxs https://github.com/atolab/atobin/blob/master/zenoh-storages/latest/ubuntu/18.04/zenoh-storages-be-sqlite3.cmxs?raw=true
chmod +x zenoh-storages-be-sqlite3.cmxs
mv zenoh-storages-be-sqlite3.cmxs $MAINDIR/zenoh-storages-$VERSION/usr/local/lib/

echo " Creating $DEB deb package ... "

for DEB in $DEBPACKS; do

  dpkg-deb --build $MAINDIR/$DEB-$VERSION
 
done
