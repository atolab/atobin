### Installing zenoh-c in debian (ubuntu 18.04 LTS) :

To install zenoh-c library and its headers in debian (ubuntu 18.04 LTS) please do the following steps:

1. Add the atolab repository to the sources list, i.e. **pkgs.adlink-labs.tech**
```
$ echo "deb [trusted=yes] http://pkgs.adlink-labs.tech/debian/18.04 ./" | sudo tee -a /etc/apt/sourc$
```

2. Update the apt repo list
```
$ sudo apt update
```

3. Install **zenoh**:
```
$ sudo apt install libzenohc libzenohc-dev
```
4. Test the installation:

To test if **zenoh-c** is installed correctly do the following:
```
$ ls /usr/local/lib/
```
Then the **libzenohc.so** should appear in the /usr/local/lib folder.

Additionally, you can also verify if the headers files are correctly installed by doing:

```
$ ls /usr/local/include/
```

Then the **zenoh** folder and the **zenon.h** header file should appear in that location.
