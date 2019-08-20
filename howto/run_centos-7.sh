#Script to generate the rpm package for centos-7

VERSION="0.3.0"
MAINDIR="centos-7"
RPMPACKS="zenoh yaks"
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
  
  echo -e "License:	GPL" 					>> $RPMD.spec
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
  echo -e "This program is free software: you can redistribute it and/or modify" >> LICENSE
  echo -e "it under the terms of the GNU General Public License as published by" >> LICENSE
  echo -e "the Free Software Foundation, either version 3 of the License, or" >> LICENSE
  echo -e "(at your option) any later version.\n" >> LICENSE

  echo -e "This program is distributed in the hope that it will be useful," >> LICENSE
  echo -e "but WITHOUT ANY WARRANTY; without even the implied warranty of" >> LICENSE
  echo -e "MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the" >> LICENSE
  echo -e "GNU General Public License for more details.\n" >> LICENSE

  echo -e "You should have received a copy of the GNU General Public License" >> LICENSE
  echo -e "along with this program.  If not, see <http://www.gnu.org/licenses/>." >> LICENSE
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

