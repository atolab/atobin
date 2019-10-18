### Installing YAKS & zenoh in CentOS

In order to install **YAKS** & **zenoh** in CentOs do the following:

1. Create a yum .repo file as below :
```
$ vi /etc/yum.repos.d/atolab.repo
```
enter the correct **server-name** or **repo-server-ip** address:
```
[atolab-repo]
name=Atolab RPM System Package Repo
baseurl=http://10.198.125.97/     # server-name or repo-server-ip
enabled=1
gpgcheck=0
```

2. check the **atolab-repo** is available to yum: 
```
$ yum repolist
$ yum update
```

3. install YAKS & zenoh + libs 
```
$ yum install yaks

Dependencies Resolved:
===============================================================================================================
 Package                    Arch                Version                   Repository                Size
===============================================================================================================
Installing:
 yaks                      x86_64              0.3.0-1.el7               atolab-repo               75 k
Installing for dependencies:
 libzenohc                 x86_64              0.3.0-1.el7               atolab-repo               25 k
 libzenohc-dev             x86_64              0.3.0-1.el7               atolab-repo               34 k
 zenoh                     x86_64              0.3.0-1.el7               atolab-repo               17 k
 zenoh-http                x86_64              0.3.0-1.el7               atolab-repo              148 k
 zenohd                    x86_64              0.3.0-1.el7               atolab-repo              3.7 M

```

4. test it

```
$ zenohd -v

[1571405826.305739][INFO] Zenoh router starting ...
[1571405826.305835][INFO] pid     : af6e739b6b574f00bee53f2564e13a43
[1571405826.305850][INFO] tcpport : 7447
[1571405826.305866][INFO] peers   : 
[1571405826.309044][INFO] Loading plugin '/usr/bin/../lib/zenoh-http-plugin.cmxs' ...
[1571405826.315604][INFO] [Zhttp] listening on port tcp/0.0.0.0:8000
[1571405826.315629][INFO] Loading plugin '/usr/bin/../lib/yaks-plugin.cmxs' ...
[1571405826.316685][INFO] [Yaks] create Yaks admin space on /@/af6e739b6b574f00bee53f2564e13a43/plugins/yaks/**
[1571405826.319620][INFO] Starting TcpService at tcp/0.0.0.0:7447 with svc-id 1
```


5. To show the man help-page:
```
$ zenohd --help

zenohd(1)                        Zenohd Manual                       zenohd(1)


NAME
       zenohd

SYNOPSIS
       zenohd [OPTION]...

OPTIONS
       --color=WHEN (absent=auto)
           Colorize the output. WHEN must be one of `auto', `always' or
           `never'.

       --help[=FMT] (default=auto)
           Show this help in format FMT. The value FMT must be one of `auto',
           `pager', `groff' or `plain'. With `auto', the format is `pager` or
           `plain' whenever the TERM env var is `dumb' or undefined.

```
