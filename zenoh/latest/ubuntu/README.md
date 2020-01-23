
### Installing zenoh in debian (ubuntu 18.04 LTS) :

To install zenoh in debian (ubuntu) please do the following:

1. Add the atolab repository to the sources list, i.e. **pkgs.adlink-labs.tech** 
```
$ echo "deb [trusted=yes] http://pkgs.adlink-labs.tech/debian ./" | sudo tee -a /etc/apt/sources.list > /dev/null
```

2. Update the apt repo list
```
$ sudo apt update
```

3. Install **zenoh**:
```
$ sudo apt install zenohd
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

5. Run **zenohd -v***, if **zenoh-storages** plugin is installed, the output should be as follows: 
```
$ zenohd -v

0 - 172.20.0.1
1 - 172.17.0.1
2 - 172.19.0.1
3 - 172.18.0.1
4 - 172.21.0.1
5 - 10.0.3.1
6 - 10.198.125.1
7 - 192.168.122.1
8 - 192.168.0.16
[1579737446.165357][INFO] Running scouting on interface auto

[1579737446.165384][INFO] Joining MCast group
[1579737446.165411][INFO] Zenoh router starting ...
[1579737446.165426][INFO] pid     : db1787119f8c4b11b01249f574b4dbaa
[1579737446.165432][INFO] tcpport : 7447
[1579737446.165437][INFO] peers   : 
[1579737446.167515][INFO] Loading plugin 'storages' from '/usr/local/lib//zenoh-plugin-storages.cmxs' with args: '/usr/local/lib//zenoh-plugin-storages.cmxs'...
[1579737446.172215][INFO] [Zstorages] create storages admin space on /@/router/db1787119f8c4b11b01249f574b4dbaa/plugin/storages/**
[1579737446.172277][INFO] TcpService listening on port tcp/0.0.0.0:7447
```
```
