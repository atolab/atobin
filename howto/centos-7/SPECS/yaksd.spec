Name:           yaksd
Version:        0.3.0
Release:        1%{?dist}
Summary:        The YAKS rpm package

License:        GPL
URL:            https://github.com/atolab/yaks.git
Source0:        yaksd-0.3.0.tar.gz

Requires:       bash, libev

%description
The Yet Another Key-Value Storage for data-centric distributed systems.

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
- First YAKS rpm package
