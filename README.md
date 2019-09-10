# ATO Bins
This repository contains pre-built network services as well as pre-build SDKs.

## ATO Prebuilt Network Services
This repository contains pre-built binaries for zenoh and YAKS network service.

### zenoh

**Latest version: 0.3.0**

**Latest release: 2019-07-19**

| OS | Version | Stable Binaries | Brew/Debian/RPM package | Unstable Binaries |
| --- | --- | --- | --- | --- |
| [macos](./zenoh/latest/macos)   | 10.15.5 / 10.14.6 | [zenohd](./zenoh/latest/macos/10.15.5/zenohd)  | [brew](./zenoh/latest/macos) | [zenohd](./zenoh/unstable/macos/10.14.6/zenohd)|
| [ubuntu](./zenoh/latest/ubuntu) | 16.04 LTS | [zenohd](./zenoh/latest/ubuntu/16.04/zenohd) | [zenohd-0.3.0_amd64.deb](./zenoh/latest/ubuntu/16.04/zenohd-0.3.0_amd64.deb) | [zenohd](./zenoh/unstable/ubuntu/16.04/zenohd) <br/> [zenoh-http-plugin.cmxs](./zenoh/unstable/ubuntu/16.04/zenoh-http-plugin.cmxs) |
| ubuntu (arm64)| 18.04 LTS | [zenohd](./zenoh/latest/ubuntu/18.10/zenohd) | [zenohd-0.3.0_amd64.deb](./zenoh/latest/ubuntu/18.10/zenohd-0.3.0_amd64.deb) | [zenohd](./zenoh/unstable/ubuntu_arm64/16.04/zenohd) <br/> [zenoh-http-plugin.cmxs](./zenoh/unstable/ubuntu_arm64/16.04/zenoh-http-plugin.cmxs)  |
| [centos](./zenoh/latest/centos) | 7.2.1511 | [zenohd](./zenoh/latest/centos/7.2.1511/zenohd) | [zenohd-0.3.0.x86_64.rpm](./zenoh/latest/centos/7.2.1511/zenohd-0.3.0-1.el7.x86_64.rpm)| |
| raspbian (armv7l) | 9.4 | | | [zenohd](./zenoh/unstable/raspian_armv7l/9.4/zenohd) <br/> [zenoh-http-plugin.cmxs](./zenoh/unstable/raspian_armv7l/9.4/zenoh-http-plugin.cmxs) |

### YAKS

**Latest version: 0.3.0**

**Latest release: 2019-07-19**

| OS | Version | Stable Binaries |  Brew/Debian/RPM package | Unstable Binaries |
| --- | --- | --- | --- | --- |
| [macos](./yaks/latest/macos)   | 10.15.5 | [yaksd](./yaks/latest/macos/10.15.5/yaksd)  | [brew](./yaks/latest/macos) | |
| [ubuntu](./yaks/latest/ubuntu) | 16.04 LTS | [yaksd](./yaks/latest/ubuntu/16.04/yaksd) | [yaksd-0.3.0_amd64.deb](./yaks/latest/ubuntu/16.04/yaksd-0.3.0_amd64.deb)    | |
| | 18.10 | [yaksd](./yaks/latest/ubuntu/18.10/yaksd) | [yaksd-0.3.0_amd64.deb](./yaks/latest/ubuntu/18.10/yaksd-0.3.0_amd64.deb) | |
| [centos](./yaks/latest/centos) | 7.2.1511 | [yaksd](./yaks/latest/centos/7.2.1511/yaksd) | [yaksd-0.3.0.x86_64.rpm](./yaks/latest/centos/7.2.1511/yaksd-0.3.0-1.el7.x86_64.rpm) | |


### Eclipse Fog05

**Latest version: 0.2.0**

**Latest release: 2019-09-03**

| OS | Version | Stable Binaries | Unstable Binaries |
| --- | --- | --- | --- |
| ubuntu | 16.04 LTS | [agent](./fog05/latest/ubuntu/16.04/agent) | [fos_agent](./fog05/unstable/ubuntu/16.04/fos_agent.exe) <br/> [fos_cli_ng](./fog05/unstable/ubuntu/16.04/fos_cli_ng.exe) |
| | 18.04 LTS | |[fos_agent](./fog05/unstable/ubuntu/18.04/fos_agent.exe) <br/> [fos_cli_ng](./fog05/unstable/ubuntu/18.04/fos_cli_ng.exe)| 
| ubuntu (arm64)| 18.04 LTS | |[fos_agent](./fog05/unstable/ubuntu_arm64/18.04/fos_agent.exe) <br/> [fos_cli_ng](./fog05/unstable/ubuntu_arm64/18.04/fos_cli_ng.exe)| 
| raspbian (armv7l) | 9.4 | | [fos_agent](./fog05/unstable/raspbian_armv7l/9.4/fos_agent.exe) <br/>[fos_cli_ng](./fog05/unstable/raspbian_armv7l/9.4/fos_cli_ng.exe) |



## ATO Prebuilt SDK
This repository contains pre-built binaries for zenoh and YAKS.

### zenoh-C API

**Latest version: 0.3.0**

**Latest release: 2019-07-19**

| OS | Version | Stable Binaries |  Brew/Debian package | Unstable Binaries |
| --- | --- | --- | --- | --- |
| [macos](./zenoh-c/latest/macos)   | 10.15.5 | [libzenohc.dylib](./zenoh-c/latest/macos/10.15.5/libzenohc.dylib)  | [brew](./zenoh-c/latest/macos) | |
| [ubuntu](./zenoh-c/latest/ubuntu) | 16.04 LTS | [libzenohc.so](./zenoh-c/latest/ubuntu/16.04/libzenohc.so) | [libzenohc-0.3.0_amd64.deb](./zenoh-c/latest/ubuntu/16.04/libzenohc-0.3.0_amd64.deb) | [libzenohc.so](./zenoh-c/unstable/ubuntu/16.04/libzenohc.so)|
| | 18.04 LTS | [libzenohc.so](./zenoh-c/latest/ubuntu/18.10/libzenohc.so)  | [libzenohc-0.3.0_amd64.deb](./zenoh-c/latest/ubuntu/18.10/libzenohc-0.3.0_amd64.deb) | [libzenohc.so](./zenoh-c/unstable/ubuntu/18.04/libzenohc.so) |
| raspbian (armv7l) | 9.4 | | | [libzenohc.so](./zenoh-c/unstable/raspian_armv7l/9.4/libzenohc.so)|

### zenoh-java API

**Latest version: 0.3.0**

**Latest release: 2019-07-19**

| OS | Version | Stable jar | Unstable jar |
| --- | --- | --- | --- |
| ubuntu | 16.04 LTS | [zenoh-0.3.0-SNAPSHOT.jar](./zenoh-java/latest/ubuntu/16.04/zenoh-0.3.0-SNAPSHOT.jar) | |
| | 18.10 | [zenoh-0.3.0-SNAPSHOT.jar](./zenoh-java/latest/ubuntu/18.10/zenoh-0.3.0-SNAPSHOT.jar) | |
