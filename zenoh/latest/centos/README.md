### Installing Zenoh in CentOS

In order to install **zenoh** in CentOs (i.e 7.2.1511) directly from the rpm package, exec the following commands in a console:
```
> wget -O zenohd.rpm https://github.com/atolab/atobin/blob/master/zenoh/latest/centos/7.2.1511/zenohd-0.3.0-1.el7.x86_64.rpm?raw=true
> yum localinstall ./zenohd.rpm
```
To test if **zenoh** is installed correctly:
```
> zenohd --help
```


### Installing YAKS in CentOS

In order to install **YAKS** in CentOs (i.e 7.2.1511) directly from the rpm package, exec the following commands in a console:

```
> wget -O yaksd.rpm https://github.com/atolab/atobin/blob/master/yaks/latest/centos/7.2.1511/yaksd-0.3.0-1.el7.x86_64.rpm?raw=true
> yum localinstall ./yaksd.rpm
```
To test if YAKS is installed correctly:
```
>  yaksd --help
```
