#Script to generate the rpm package for centos-7

VERSION="0.5.0"
MAINDIR="centos-7"
RPMPACKS="zenoh"
RPMBUILD_DIR=`pwd`
RPMBUILD_DIR+="/"$MAINDIR

echo " Installing pre-requisites ... "
yum install gcc rpm-build rpm-devel rpmlint make python bash coreutils diffutils patch rpmdevtools

echo " ============= Creating $RPM rpm structure  ============= "

mkdir $MAINDIR
mkdir $MAINDIR/rpmbuild

RPMBUILD_DIR+="/rpmbuild"

cd $RPMBUILD_DIR 

mkdir BUILD RPMS SOURCES SPECS SRPMS tmp

for RPM in $RPMPACKS; do
  
  RPMD=$RPM
  RPMD+="d"
  echo " ============= Creating $RPM spec file ============="
   
  echo -e "Name: 		$RPMD " 	>> $RPMD.spec
  echo -e "Version:	$VERSION " 	>> $RPMD.spec
  echo -e "Release:	1%{?dist} " 	>> $RPMD.spec
  echo -e "Summary:    	%{name} rpm package implemented in bash script.\n" >> $RPMD.spec
  
  echo -e "License:	EPL 2.0 or Apache 2.0" 					>> $RPMD.spec
  echo -e "URL:         	https://github.com/atolab/$RPM.git" 	>> $RPMD.spec
  echo -e "Source0:	$RPMD-$VERSION.tar.gz\n" 		>> $RPMD.spec

  echo -e "Requires:	bash, libev \n" 			>> $RPMD.spec

  echo -e "%description" 		 			>> $RPMD.spec
  echo -e "The $RPMD rpm package deamon\n" 			>> $RPMD.spec

  echo -e "%prep"   		>> $RPMD.spec
  echo -e "%setup -q\n" 	>> $RPMD.spec

  echo -e "%build\n"		>> $RPMD.spec

  echo -e "%install"		>> $RPMD.spec	

  echo -e "mkdir -p %{buildroot}%{_bindir}\n" >> $RPMD.spec

  echo -e "install -m 0755 %{name} %{buildroot}%{_bindir}/%{name}\n" >> $RPMD.spec

  echo -e "%files" 			>> $RPMD.spec
  echo -e "%license LICENSE" 		>> $RPMD.spec
  echo -e "%{_bindir}/%{name}\n" 	>> $RPMD.spec

  echo "%changelog"			>> $RPMD.spec	
  echo "* `date +"%a %b %d %Y"` atolab <geeks@adlink-labs.tech> - %{version}-%{release}" 	>> $RPMD.spec
  echo "- $RPMD-$VERSION rpm package" 				     		>> $RPMD.spec	

  mv $RPMD.spec SPECS/

  echo " ============= Downloading binary file ============= "
  mkdir tmp/$RPMD-$VERSION 
  wget -O $RPMD https://github.com/atolab/atobin/blob/master/$RPM/latest/centos/7.2.1511/$RPMD?raw=true
  chmod +x $RPMD
  mv $RPMD tmp/$RPMD-$VERSION

  echo "--- Creating LICENSE file ---"
  echo -e "apache-2.0 or epl-2.0" >> LICENSE
  echo -e "TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION\n" >> LICENSE
  echo -e "1. Definitions." >> LICENSE
  echo -e "License: shall mean the terms and conditions for use, reproduction," >> LICENSE
  echo -e "and distribution as defined by Sections 1 through 9 of this document." >> LICENSE
  echo -e "Licensor: shall mean the copyright owner or entity authorized by" >> LICENSE
  echo -e "the copyright owner that is granting the License.\n" >> LICENSE

  echo -e "The accompanying program is provided under the terms of this eclipse" >> LICENSE
  echo -e "public license (\"agreement\"). any use, reproduction or distribution" >> LICENS
  echo -e "of the program constitutes recipient's acceptance of this agreement." >> LICENSE
  echo -e "GNU General Public License for more details.\n" >> LICENSE

  echo -e "\"Secondary License\" means either the GNU General Public License," >> LICENSE
  echo -e "Version 2.0, or any later versions of that license, including any" >> LICENSE
  echo -e "exceptions or additional permissions as identified by the initial" >> LICENSE
  echo -e "Contributor." >> LICENSE
  cp LICENSE tmp/$RPMD-$VERSION
  
  cd tmp/
  tar -cvzf $RPMD-$VERSION.tar.gz $RPMD-$VERSION
  echo `pwd`
  cd ../
  mv tmp/$RPMD-$VERSION.tar.gz SOURCES/

  echo " ============= Building $RPMD package ============= "
  echo `pwd`
  echo $RPMBUILD_DIR
  rpmbuild --define "_topdir $RPMBUILD_DIR" -bb SPECS/$RPMD.spec

done
