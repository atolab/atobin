### Installing Zenoh-c in Ubuntu

## Ubuntu-16.04

In order to install **zenoh-c** in Ubuntu-16.04 from a debian package, exec the following commands in a console:
```
$ wget -O libzenohc.deb https://github.com/atolab/atobin/blob/master/zenoh-c/latest/ubuntu/16.04/libzenohc-0.3.0_amd64.deb?raw=true
$ sudo apt install ./libzenohc.deb
```
To test if **zenoh-c** is installed correctly:
```
$ ls /usr/local/lib/
```
Then the **libzenohc.so** should appear in the /usr/local/lib folder.

## Ubuntu-18.10

In order to install **zenoh-c** in Ubuntu-18.10, download the following debian package:
```
$ wget -O libzenohc.deb https://github.com/atolab/atobin/blob/master/zenoh-c/latest/ubuntu/18.10/libzenohc-0.3.0_amd64.deb?raw=true
$ sudo apt install ./libzenohc.deb
```
To test if **zenoh-c** is installed correctly:
```
$ ls /usr/local/lib/
```
Then the **libzenohc.so** should appear in the /usr/local/lib folder.
