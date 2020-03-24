
### Installing zenoh in debian (ubuntu 18.04 LTS) :

To install zenoh in debian (ubuntu) please do the following:

1. Add the atolab repository to the sources list, i.e. **pkgs.adlink-labs.tech** 
```
$ echo "deb [trusted=yes] http://pkgs.adlink-labs.tech/debian/18.04 ./" | sudo tee -a /etc/apt/sources.list > /dev/null
```

2. Update the apt repo list
```
$ sudo apt update
```

3. Install **zenoh**:
```
$ sudo apt install zenoh
```
4. Test installation, the output should be the man page:
```
$ zenohd --help

ZENOHD(1)                        Zenohd Manual                       ZENOHD(1)



NAME
       zenohd

SYNOPSIS
       zenohd [OPTION]...

OPTIONS
       --<plugin_name>.<plugin_option>=<option_value>
           Pass to the plugin with name '<plugin_name>' the option
           --<plugin_option>=<option_value>. Example of usage:
           --zenoh-storages.storage=/demo/example/**
           --zenoh-http.httpport=8080

       --color=WHEN (absent=auto)
           Colorize the output. WHEN must be one of `auto', `always' or
           `never'.

       -d <discovery>, --discovery=<discovery> (absent=auto)
           The ip-address of the interface over which scouting should be ran.
(...)           
           
```
5. Install **libzenohc**, **libzenohc-dev**, **zenoh-http**, **zenoh-storages** plugins as follows:
```
$ sudo apt install libzenohc libzenoh-dev zenoh-http zenoh-storages
```

6. Run **zenoh**, if **zenoh-http** and **zenoh-storages** plugins are correctly installed, the output should be as follows: 
```
$ zenohd -v
0 - 10.198.125.67
[1580922609.712986][INFO] Running scouting on interface auto

[1580922609.713035][INFO] Joining MCast group
[1580922609.713073][INFO] Zenoh router starting ...
[1580922609.713094][INFO] pid     : 2e8b68206c984c91b7ba276cdfe3eab4
[1580922609.713101][INFO] tcpport : 7447
[1580922609.713110][INFO] peers   : 
[1580922609.714879][INFO] Loading plugin 'http' from '/usr/local/lib//zenoh-plugin-http.cmxs' with args: '/usr/local/lib//zenoh-plugin-http.cmxs'...
[1580922609.725475][INFO] [Zhttp] listening on port tcp/0.0.0.0:8000
[1580922609.725510][INFO] Loading plugin 'storages' from '/usr/local/lib//zenoh-plugin-storages.cmxs' with args: '/usr/local/lib//zenoh-plugin-storages.cmxs'...
[1580922609.726774][INFO] [Zstorages] create storages admin space on /@/router/2e8b68206c984c91b7ba276cdfe3eab4/plugin/storages/**
[1580922609.727174][INFO] TcpService listening on port tcp/0.0.0.0:7447

```
