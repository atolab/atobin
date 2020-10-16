
#Script to generate the rpm packages for zenoh, zenoh-router, zplugin_http, zplugin_storages

GITHUB_VERSION="`git describe --abbrev=0`"
VERSION=`echo $GITHUB_VERSION | sed s/-/~/g`
MAINDIR=`pwd`

RPMBUILD_DIR="target/release/rpmbuild"
mkdir -p $RPMBUILD_DIR

# install pre-requisites
#cargo install cargo-rpm

# first we need to do a build --release
# cargo build --release


# zenoh-router (works!)
echo " ============= Creating zenoh-router rpm package ============= "
cd zenoh-router
cargo rpm init
sed -i 's/.\/src\/bin\///g' Cargo.toml
cargo rpm build -v
rm -r .rpm
cd ../

cd $RPMBUILD_DIR
mkdir -p BUILD BUILDROOT RPMS SOURCES SPECS SRPMS tmp


# zplugin_http
echo " ============= Creating zplugin_http rpm package ============= "

# create spec file for zplugin_http rpm package
echo -e "Name: 		zplugin_http" 	>> zplugin_http.spec
echo -e "Version:	$VERSION" 	    >> zplugin_http.spec
echo -e "Release:	1" 	            >> zplugin_http.spec
echo -e "Summary:	zenoh's zplugin_http package.\n" >> zplugin_http.spec
echo -e "License:	EPL 2.0 or Apache 2.0" 				>> zplugin_http.spec
echo -e "URL: https://github.com/eclipse/zenoh.git" 	>> zplugin_http.spec
echo -e "Source0:	zplugin_http-$VERSION.tar.gz\n" 	>> zplugin_http.spec
echo -e "Requires:	zenoh-router \n" 			                >> zplugin_http.spec
echo -e "%description" 		 			                >> zplugin_http.spec
echo -e "The zenoh's zplugin_http package\n" >> zplugin_http.spec
echo -e "%prep"   		    >> zplugin_http.spec
echo -e "%setup -q\n" 	    >> zplugin_http.spec
echo -e "%build\n"		    >> zplugin_http.spec
echo -e "%install"		    >> zplugin_http.spec
echo -e "mkdir -p %{buildroot}/usr/local/lib/" >> zplugin_http.spec
echo -e "install -m 0755 libzplugin_http.so %{buildroot}/usr/local/lib/\n" >> zplugin_http.spec
echo -e "%clean" >> zplugin_http.spec
echo -e "rm -rf %{buildroot}\n" >> zplugin_http.spec
echo -e "%files" 			          >> zplugin_http.spec
echo -e "%defattr(-,root,root,-)" >> zplugin_http.spec
echo -e "%dir /usr/local/lib/" >> zplugin_http.spec
echo -e "/usr/local/lib/libzplugin_http.so" 	>> zplugin_http.spec
echo -e "%license LICENSE \n" 		  >> zplugin_http.spec
echo -e "%changelog"			>> zplugin_http.spec
echo -e "* Tue Sep 22 2020 ADLINK ATO devteam <geeks@adlink-labs.tech> - %{version}-%{release}" 	>> zplugin_http.spec
echo -e "- zplugin_http-$VERSION package" >> zplugin_http.spec

mv zplugin_http.spec SPECS/

mkdir -p tmp/zplugin_http-$VERSION/
cp $MAINDIR/target/release/libzplugin_http.so tmp/zplugin_http-$VERSION/
cp $MAINDIR/LICENSE tmp/zplugin_http-$VERSION
cd tmp/
tar -cvzf zplugin_http-$VERSION.tar.gz zplugin_http-$VERSION
mv zplugin_http-$VERSION.tar.gz ../SOURCES/
cd ../
rpmbuild --define "_topdir `pwd`" -bb --clean SPECS/zplugin_http.spec

# zplugin_storages

echo " ============= Creating zplugin_storages.so package ============= "
cd $RPMBUILD_DIR
# create spec file for zplugin_storages rpm package
echo -e "Name: 		zplugin_storages" 	>> zplugin_storages.spec
echo -e "Version:	$VERSION" 	        >> zplugin_storages.spec
echo -e "Release:	1" 	                >> zplugin_storages.spec
echo -e "Summary:	zenoh's zplugin_storages package.\n" >> zplugin_storages.spec
echo -e "License:	EPL 2.0 or Apache 2.0" 					    >> zplugin_storages.spec
echo -e "URL: https://github.com/eclipse/zenoh.git" 	>> zplugin_storages.spec
echo -e "Source0:	zplugin_storages-$VERSION.tar.gz\n" 	>> zplugin_storages.spec
echo -e "Requires:	zenoh-router \n" 			            >> zplugin_storages.spec
echo -e "%description" 		 			                >> zplugin_storages.spec
echo -e "The zenoh's zplugin_storages package\n" >> zplugin_storages.spec
echo -e "%prep"   		    >> zplugin_storages.spec
echo -e "%setup -q\n" 	    >> zplugin_storages.spec
echo -e "%build\n"		    >> zplugin_storages.spec
echo -e "%install"		    >> zplugin_storages.spec
echo -e "mkdir -p %{buildroot}/usr/local/lib/" >> zplugin_storages.spec
echo -e "install -m 0755 libzplugin_storages.so %{buildroot}/usr/local/lib/\n" >> zplugin_storages.spec
echo -e "%clean"                        >> zplugin_storages.spec
echo -e "rm -rf %{buildroot}\n"         >> zplugin_storages.spec
echo -e "%files" 			            >> zplugin_storages.spec
echo -e "%defattr(-,root,root,-)"       >> zplugin_storages.spec
echo -e "%dir /usr/local/lib/"          >> zplugin_storages.spec
echo -e "/usr/local/lib/libzplugin_storages.so" 	>> zplugin_storages.spec
echo -e "%license LICENSE \n" 		    >> zplugin_storages.spec
echo -e "%changelog"			        >> zplugin_storages.spec
echo -e "* Tue Sep 22 2020 ADLINK ATO devteam <geeks@adlink-labs.tech> - %{version}-%{release}" 	>> zplugin_storages.spec
echo -e "- zplugin_storages-$VERSION package" >> zplugin_storages.spec
mv zplugin_storages.spec SPECS/

mkdir -p tmp/zplugin_storages-$VERSION/
cp $MAINDIR/target/release/libzplugin_storages.so tmp/zplugin_storages-$VERSION/
cp $MAINDIR/LICENSE tmp/zplugin_storages-$VERSION
cd tmp/
tar -cvzf zplugin_storages-$VERSION.tar.gz zplugin_storages-$VERSION
mv zplugin_storages-$VERSION.tar.gz ../SOURCES/
cd ../
rpmbuild --define "_topdir `pwd`" -bb --clean SPECS/zplugin_storages.spec


# echo " ============= Creating zenoh top-level package ============= "
cd $RPMBUILD_DIR
# create spec file for zenoh rpm package
echo -e "Name: 		zenoh" 	    >> zenoh.spec
echo -e "Version:	$VERSION" 	>> zenoh.spec
echo -e "Release:	1" 	        >> zenoh.spec
echo -e "Summary:	Eclipse zenoh rpm package.\n" >> zenoh.spec
echo -e "License:	EPL 2.0 or Apache 2.0" 					>> zenoh.spec
echo -e "URL: https://github.com/eclipse/zenoh.git" 	    >> zenoh.spec
echo -e "Source0:	zenoh-$VERSION.tar.gz\n" 		        >> zenoh.spec
echo -e "Requires:	bash, libev, zenoh-router, zplugin_http, zplugin_storages \n" 			>> zenoh.spec
echo -e "%description" 		 			                    >> zenoh.spec
echo -e "The zenoh rpm package\n" 	>> zenoh.spec
echo -e "%prep"   		    >> zenoh.spec
echo -e "%setup -q\n" 	    >> zenoh.spec
echo -e "%build\n"		    >> zenoh.spec
echo -e "%install"		    >> zenoh.spec
echo -e "mkdir -p %{buildroot}/usr/local/share/man/man1/" >> zenoh.spec
echo -e "install -m 0755 zenoh.1 %{buildroot}/usr/local/share/man/man1/\n" >> zenoh.spec
echo -e "%clean" >> zenoh.spec
echo -e "rm -rf %{buildroot}\n"     >> zenoh.spec
echo -e "%files" 			        >> zenoh.spec
echo -e "%defattr(-,root,root,-)"   >> zenoh.spec
echo -e "%dir /usr/local/share/man/man1/" >> zenoh.spec
echo -e "/usr/local/share/man/man1/zenoh.1" 	>> zenoh.spec
echo -e "%license LICENSE \n" 		  >> zenoh.spec
echo -e "%changelog"			>> zenoh.spec
echo -e "* Tue Sep 22 2020 ADLINK ATO devteam <geeks@adlink-labs.tech> - %{version}-%{release}" 	>> zenoh.spec
echo -e "- zenoh-$VERSION rpm package" >> zenoh.spec
mv zenoh.spec SPECS/

../zenohd --help > zenoh.1
../zenohd --help > zenohd.1


mkdir -p tmp/zenoh-$VERSION
mv zenoh.1 tmp/zenoh-$VERSION
mv zenohd.1 tmp/zenoh-$VERSION
cp $MAINDIR/LICENSE tmp/zenoh-$VERSION
cd tmp/
tar -cvzf zenoh-$VERSION.tar.gz zenoh-$VERSION
mv zenoh-$VERSION.tar.gz ../SOURCES/
cd ../

#echo " ============= Building zenoh rpm package ============= "
rpmbuild --define "_topdir `pwd`" -bb --clean SPECS/zenoh.spec

# cleanup
rm -r tmp/