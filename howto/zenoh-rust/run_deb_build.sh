
#Script to generate the deb packages for zenoh, zenoh-router, zplugin_http, zplugin_storages

VERSION="`git describe --abbrev=0`"
MAINDIR="target/debian"

# install pre-requisites
cargo install cargo-deb

# creating .deb for libraries: zplugin_http, zplugin_storages
cargo deb -p zplugin_http

cargo deb -p zplugin_storages

# creating .deb for zenohd
cargo deb -p zenoh-router

mkdir -p $MAINDIR
echo "  Creating zenoh top-level package ..."
# create control file for zenoh deb package
mkdir -p $MAINDIR/zenoh_$VERSION/DEBIAN
echo "Package: zenoh " >> control
echo "Version: $VERSION " >> control
echo "Section: custom " >> control
echo "Priority: optional" >> control
echo "Architecture: all" >> control
echo "Essential: no" >> control
echo "Installed-Size: 1024 " >> control
echo "Depends: zenoh-router " >> control
echo "Recommends: zplugin_http, zplugin_storages " >> control
echo "Maintainer: geeks@adlink-labs.tech " >> control
echo "Description: zenoh top-level package" >> control
echo "" >> control
mv control $MAINDIR/zenoh_$VERSION/DEBIAN/

target/release/zenohd --help >> zenoh.1
target/release/zenohd --help >> zenohd.1

mkdir -p $MAINDIR/zenoh_$VERSION/usr/local/share/man/man1/
mv zenoh.1 $MAINDIR/zenoh_$VERSION/usr/local/share/man/man1/
mv zenohd.1 $MAINDIR/zenoh_$VERSION/usr/local/share/man/man1/

dpkg-deb --build $MAINDIR/zenoh_$VERSION
rm -r $MAINDIR/zenoh_$VERSION