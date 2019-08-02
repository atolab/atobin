
### Installing Zenoh in Ubuntu

In order to install **zenoh** in Ubuntu (i.e Ubuntu-1604) directly from the debian package, exec the following commands in a console:
```
> wget -O zenohd.deb https://github.com/atolab/atobin/blob/master/zenoh/latest/ubuntu/16.04/zenohd-0.3.0_amd64.deb?raw=true
> sudo apt install ./zenohd.deb
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
