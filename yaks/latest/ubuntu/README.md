### YAKS

In order to install **YAKS** in Ubuntu (i.e Ubuntu-1604)  directly from the debian package, exec the following commands in a console:
```
> wget -O yaksd.deb https://github.com/atolab/atobin/blob/master/yaks/latest/ubuntu/16.04/yaksd-0.3.0_amd64.deb?raw=true
> sudo apt install ./yaksd.deb
```
To test if **YAKS** is installed correctly:
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
```