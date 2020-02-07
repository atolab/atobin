### Installing zenoh in CentOS-7

In order to install **zenoh** in CentOS do the following:

1. Create a yum .repo file as shown below :
```
# vi /etc/yum.repos.d/atolab.repo

[atolab-repo]
name=ADLINK Atolab RPM System Package Repo
baseurl=http://pkgs.adlink-labs.tech/centos/7.2.1511
enabled=1
gpgcheck=0
```

2. Check the **atolab-repo** is available to yum: 
```
# yum repolist
# yum update
```

3. Install **zenoh** 
```
# yum install zenoh
Failed to set locale, defaulting to C
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
 * base: centos.quelquesmots.fr
 * extras: centos.mirror.fr.planethoster.net
 * updates: centos.mirror.fr.planethoster.net
Resolving Dependencies
--> Running transaction check
---> Package zenoh.x86_64 0:0.4.0-1.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

=======================================================================================================
 Package             Arch                 Version                      Repository                 Size
=======================================================================================================
Installing:
 zenoh               x86_64               0.4.0-1.el7                  atolab-repo               4.7 M

Transaction Summary
=======================================================================================================
Install  1 Package

Total download size: 4.7 M
Installed size: 22 M
Is this ok [y/d/N]: y
Downloading packages:
zenoh-0.4.0-1.el7.x86_64.rpm                                                    | 4.7 MB  00:00:00     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : zenoh-0.4.0-1.el7.x86_64                                                            1/1 
  Verifying  : zenoh-0.4.0-1.el7.x86_64                                                            1/1 

Installed:
  zenoh.x86_64 0:0.4.0-1.el7                                                                           

Complete!
```

4. Installing the **zenoh-http** and the **zenoh-storages** libraries:
```
# yum install zenoh-http zenoh-storages
Failed to set locale, defaulting to C
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
 * base: centos.quelquesmots.fr
 * extras: centos.mirror.fr.planethoster.net
 * updates: centos.mirror.fr.planethoster.net
Resolving Dependencies
--> Running transaction check
---> Package zenoh-http.x86_64 0:0.4.0-1.el7 will be installed
---> Package zenoh-storages.x86_64 0:0.4.0-1.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

=======================================================================================================
 Package                    Arch               Version                   Repository               Size
=======================================================================================================
Installing:
 zenoh-http                 x86_64             0.4.0-1.el7               atolab-repo             184 k
 zenoh-storages             x86_64             0.4.0-1.el7               atolab-repo             890 k

Transaction Summary
=======================================================================================================
Install  2 Packages

Total download size: 1.0 M
Installed size: 5.6 M
Is this ok [y/d/N]: y
Downloading packages:
(1/2): zenoh-http-0.4.0-1.el7.x86_64.rpm                                        | 184 kB  00:00:00     
(2/2): zenoh-storages-0.4.0-1.el7.x86_64.rpm                                    | 890 kB  00:00:00     
-------------------------------------------------------------------------------------------------------
Total                                                                  4.2 MB/s | 1.0 MB  00:00:00     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : zenoh-storages-0.4.0-1.el7.x86_64                                                   1/2 
  Installing : zenoh-http-0.4.0-1.el7.x86_64                                                       2/2 
  Verifying  : zenoh-http-0.4.0-1.el7.x86_64                                                       1/2 
  Verifying  : zenoh-storages-0.4.0-1.el7.x86_64                                                   2/2 

Installed:
  zenoh-http.x86_64 0:0.4.0-1.el7                  zenoh-storages.x86_64 0:0.4.0-1.el7                 

Complete!
```


5. Test the installation, execute **zenoh** in verbose mode:

```
# zenoh -v
0 - 10.198.125.224
[1581068281.244213][INFO] Running scouting on interface auto

[1581068281.244245][INFO] Joining MCast group
[1581068281.244277][INFO] Zenoh router starting ...
[1581068281.244297][INFO] pid     : dcb0c4be0453422db038e3cb2e74a935
[1581068281.244304][INFO] tcpport : 7447
[1581068281.244311][INFO] peers   : 
[1581068281.246364][INFO] Loading plugin 'storages' from '/usr/bin/../lib/zenoh-plugin-storages.cmxs' with args: '/usr/bin/../lib/zenoh-plugin-storages.cmxs'...
[1581068281.251492][INFO] [Zstorages] create storages admin space on /@/router/dcb0c4be0453422db038e3cb2e74a935/plugin/storages/**
[1581068281.251560][INFO] Loading plugin 'http' from '/usr/bin/../lib/zenoh-plugin-http.cmxs' with args: '/usr/bin/../lib/zenoh-plugin-http.cmxs'...
[1581068281.253607][INFO] [Zhttp] listening on port tcp/0.0.0.0:8000
[1581068281.253623][INFO] TcpService listening on port tcp/0.0.0.0:7447
```


5. To show **zenoh** help (man) page:
```
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
(extract)
```

6. Troubleshooting. In case there there is an error of **missing libmariadb.so.3 on redhat 7**, add the MariaDB repo as follows and install its libraries:
```
# vi /etc/yum.repos.d/MariaDB.repo
[mariadb]
name = MariaDB
baseurl = http://yum.mariadb.org/10.2/rhel7-amd64
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1

# yum install -y MariaDB-server MariaDB-client
# yum repolist
# yum update
```
the the yum installer should be able to resolve the following missing dependencies automatically:
- MariaDB-shared
- postgresql-libs
