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

Then the man for zenohd should appear:

```
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

(this is an extract)
```