### YAKS 

In order to install **YAKS** in CentOs (i.e 7.2.1511) directly from the rpm package, exec the following commands in a console:

```
> wget -O yaksd.rpm https://github.com/atolab/atobin/blob/master/yaks/latest/centos/7.2.1511/yaksd-0.3.0-1.el7.x86_64.rpm?raw=true
> yum localinstall ./yaksd.rpm
```
To test if YAKS is installed correctly:
```
>  yaksd --help
```
Then the man for yaksd should appear:

```
yaks daemon(1)                Yaks daemon Manual                yaks daemon(1)



NAME
       Yaks daemon

SYNOPSIS
       Yaks daemon [OPTION]...

OPTIONS
       --color=WHEN (absent=auto)
           Colorize the output. WHEN must be one of `auto', `always' or
           `never'.

       -h PORT, --http-port=PORT (absent=8000)
           HTTP port used by the REST front-end

       --help[=FMT] (default=auto)
           Show this help in format FMT. The value FMT must be one of `auto',
           `pager', `groff' or `plain'. With `auto', the format is `pager` or
           `plain' whenever the TERM env var is `dumb' or undefined.

(this is an extract)