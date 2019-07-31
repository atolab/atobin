# ATO Bins
This repository contains pre-built network services as well as pre-build SDKs.

## ATO Prebuilt Network Services
This repository contains pre-built binaries for zenoh and YAKS network service.

## ATO Prebuilt Debian Packages

### zenoh

In order to install **zenoh** in Ubuntu (i.e Ubuntu-1604), exec the following commands in a console:
```
> wget -O zenohd.deb https://github.com/atolab/atobin/blob/master/zenoh/latest/ubuntu/16.04/zenohd-0.3.0_amd64.deb?raw=true
> sudo apt install ./zenohd.deb
```
To test if **zenoh** is installed correctly:
```
> zenohd --help
```
**Latest release: 2019-07-19**

| OS | Binaries | Debian package |
| --- | --- | --- |
| [macos](./zenoh/latest/macos)   | [10.15.5](./zenoh/latest/macos/10.15.5/zenohd)    ||
| [ubuntu](./zenoh/latest/ubuntu) | [16.04](./zenoh/latest/ubuntu/16.04/zenohd) | [zenohd-u1604.deb](./zenoh/latest/ubuntu/16.04/zenohd-0.3.0_amd64.deb)     |
|| [18.10](./zenoh/latest/ubuntu/18.10/zenohd) | [zenohd-u1810.deb](./zenoh/latest/ubuntu/18.10/zenohd-0.3.0_amd64.deb) |
| [centos](./zenoh/latest/centos) | [7.2.1511](./zenoh/latest/centos/7.2.1511/zenohd) ||


### YAKS

In order to install **YAKS** in Ubuntu (i.e Ubuntu-1604) exec the following commands in a console:
```
> wget -O yaksd.deb https://github.com/atolab/atobin/blob/master/yaks/latest/ubuntu/16.04/yaksd-0.3.0_amd64.deb?raw=true
> sudo apt install ./yaksd.deb
```
To test if **YAKS** is installed correctly:
```
>  yaksd --help
```

**Latest release: 2019-07-19**

| OS | Binaries |  Debian package |
| --- | --- | --- |
| [macos](./yaks/latest/macos)   | [10.15.5](./yaks/latest/macos/10.15.5/yaksd)    | |
| [ubuntu](./yaks/latest/ubuntu) | [16.04](./yaks/latest/ubuntu/16.04/yaksd) | [yaksd-u1604.deb](./yaks/latest/ubuntu/16.04/yaksd-0.3.0_amd64.deb)    |
| | [18.10](./yaks/latest/ubuntu/18.10/yaksd) | [yaksd-u1810.deb](./yaks/latest/ubuntu/18.10/yaksd-0.3.0_amd64.deb) |
| [centos](./yaks/latest/centos) | [7.2.1511](./yaks/latest/centos/7.2.1511/yaksd) | |

## ATO Prebuilt SDK
This repository contains pre-built binaries for zenoh and YAKS.

### zenoh-C API

**Latest release: 2019-07-19**

| OS | Binaries |
| --- | --- |
| [macos](./zenoh-c/latest/macos)   | [10.15.5](./zenoh-c/latest/macos/10.15.5/libzenohc.dylib)  |
| [ubuntu](./zenoh-c/latest/ubuntu) | [16.04](./zenoh-c/latest/ubuntu/16.04/libzenohc.so) |
| | [18.10](./zenoh-c/latest/ubuntu/18.10/libzenohc.so)  |
