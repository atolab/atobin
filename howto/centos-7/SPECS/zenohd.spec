Name:           zenohd
Version:	0.3.0        
Release:        1%{?dist}
Summary:        The zenoh rpm package

License:        GPL
URL:            https://github.com/atolab/zenoh.git
Source0:        zenohd-0.3.0.tar.gz

Requires:       bash, libev

%description    
The zero network over-head protocol

%prep
%setup -q

%build

%install

mkdir -p %{buildroot}%{_bindir}

install -m 0755 %{name} %{buildroot}%{_bindir}/%{name}

%files
%license LICENSE
%{_bindir}/%{name}

%changelog
* Thu Aug 01 2019 Ivan Paez <ivan.paez@adlinktech.com> - 0.3.0-1
- First zenohd rpm package
