### Installing Zenoh in mac OS X with brew

1. Add ATO's homebrew tap for mac OS X with the following command :

```
$ brew tap atolab/homebrew-atobin
Updating Homebrew...
==> Auto-updated Homebrew!
```

2. Install the **zenohd** formula :

```
$ brew install zenohd
==> Installing atolab/atobin/zenohd 
==> Downloading https://github.com/atolab/atobin/blob/master/zenoh/latest/macos/10.15.5/zenohd?raw=true
Already downloaded: /home/ubuntu/.cache/Homebrew/downloads/38dcc638138fd547075924dc1dd1db5d38c4ea1e164420e9a307dad4435e0dae--zenohd
🍺  /home/linuxbrew/.linuxbrew/Cellar/zenohd/0.3.0: 3 files, 19.7MB, built in 2 seconds
```

3. Test **Zenoh** installation with the following command:

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

       -p PEERS, --peers=PEERS
           Peers

       -q, --quiet
           Be quiet. Takes over -v and --verbosity.

(extract)
```
