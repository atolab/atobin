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


### Installing YAKS in mac OS X with brew

1. Add ATO's homebrew tap for mac OS X with the following command :

```
$ brew tap atolab/homebrew-atobin
Updating Homebrew...
==> Auto-updated Homebrew!
```


2. Install the **yaksd** formula :

```
$ brew install yaksd
==> Installing atolab/atobin/yaksd 
==> Downloading https://github.com/atolab/atobin/blob/master/yaks/latest/macos/10.15.5/yaksd?raw=true
Already downloaded: /home/ivan/.cache/Homebrew/downloads/f56b3a62d870f0eed3aaef7b65ce9791bf55c38bf5eac06381d7169da35d03ed--yaksd
🍺  /home/linuxbrew/.linuxbrew/Cellar/yaksd/0.3.0: 3 files, 22.8MB, built in 2 seconds
```

3. Test **YAKS** installation with the following command:

```
$ yaksd --help

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
(extract)
```


### Installing zenoh-c in mac OS X with brew

1. Add ATO's homebrew tap for mac OS X with the following command :

```
$ brew tap atolab/homebrew-atobin
Updating Homebrew...
==> Auto-updated Homebrew!
```

2. Install the **libzenohc** formula :

```
$ brew reinstall libzenohc
==> Reinstalling atolab/atobin/libzenohc 
==> Downloading https://github.com/atolab/atobin/blob/master/zenoh-c/latest/macos/10.15.5/libzenohc.dylib
Already downloaded: /home/ivan/.cache/Homebrew/downloads/dc6739ec8cb710a9d4f9144b849b722644c9a064ae95f879334b804941b2670d--libzenohc.dylib
🍺  /home/linuxbrew/.linuxbrew/Cellar/libzenohc/0.3.0: 3 files, 86.6KB, built in 1 second
```
