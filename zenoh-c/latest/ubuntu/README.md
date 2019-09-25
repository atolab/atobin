### Installing Zenoh-c in Ubuntu

## Ubuntu-16.04 LTS

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

## Ubuntu-18.04 LTS (bionic)

Now you can install **zenoh-c** in Ubuntu-18.04 through the launchpad.net site of [atolab](https://launchpad.net/~atolab/+archive/ubuntu/atobin) with the following commands:

```
$ sudo add-apt-repository ppa:atolab/atobin
$ sudo apt-get update
$ sudo apt install zenohc
```

To test if **zenoh-c** is installed correctly, list the installed packages with the following command:

```
$ apt list --installed | grep zenohc

zenohc/bionic,now 0.3.0-1 amd64 [installed]  # the zenoh-c package should appear installed
```

Additionally, you can also verify if the headers files exist by doing:

```
$ ls /usr/include/
```

Then the **zenoh** folder and the **zenon.h** file should exist in that location.
