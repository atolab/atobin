
### Installing YAKS & zenoh in debian:

To install YAKS & zenoh in debian (ubuntu) please do the following:

1. Add the atolab repository to the sources list, i.e. **demo.yaks.is** 
```
$ echo "deb [trusted=yes] http://pkgs.adlink-labs.tech/debian ./" | sudo tee -a /etc/apt/sources.list > /dev/null
```

2. Update the apt repo list
```
$ sudo apt update
```

3. Install yaks
```
$ sudo apt install yaks
```

4. Run zenohd with should come with http and YAKS as plugin, as follows: 
```
$ zenohd -v

[1571059643.620214][INFO] Zenoh router starting ...
[1571059643.620648][INFO] pid     : 526e41afbb0744c7b889eedb26db34ec
[1571059643.620673][INFO] tcpport : 7447
[1571059643.620685][INFO] peers   : 
[1571059643.624449][INFO] Loading plugin '/usr/bin/../lib/zenoh-http-plugin.cmxs' ...
[1571059643.645578][INFO] [Zhttp] listening on port tcp/0.0.0.0:8000
[1571059643.645634][INFO] Loading plugin '/usr/bin/../lib/yaks-plugin.cmxs' ...
[1571059643.649400][INFO] [Yaks] create Yaks admin space on /@/526e41afbb0744c7b889eedb26db34ec/plugins/yaks/**
[1571059643.653890][INFO] Starting TcpService at tcp/0.0.0.0:7447 with svc-id 1
```
