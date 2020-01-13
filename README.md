# ATO Bins
This repository contains pre-built network services as well as pre-build SDKs.

## ATO Prebuilt Network Services
This repository contains pre-built binaries for zenoh and YAKS network service.

### zenoh

**Latest version: 0.4.0** \
**Latest release: 2020-01-13**

| OS | Version | Stable Binaries | Brew/Debian/RPM package | Plugins/Libs Binaries |
| --- |:---:|:---:|:---:|:----|
| [macos](./zenoh/latest/macos)   | 10.15.5 | [zenohd-macos](./zenoh/latest/macos/10.15.5/zenohd)  | [brew](./zenoh/latest/macos) | [zenohd-macos](./zenoh/unstable/macos/10.14.6/zenohd)|
| ubuntu (x86_64) | 16.04 LTS | [zenohd-0.4.0](./zenoh/latest/ubuntu/16.04/bin/zenohd-0.4.0) |  | [zenoh-plugin-http.cmxs](./zenoh-http/latest/ubuntu/16.04/zenoh-plugin-http.cmxs) <br/> [zenoh-plugin-storages.cmxs](./zenoh-storages/latest/ubuntu/16.04/zenoh-plugin-storages.cmxs) <br/> [zenoh-storages-be-influxdb.cmxs](./zenoh-storages/latest/ubuntu/16.04/zenoh-storages-be-influxdb.cmxs) <br/> [zenoh-storages-be-mariadb.cmxs](./zenoh-storages/latest/ubuntu/16.04/zenoh-storages-be-mariadb.cmxs) <br/> [zenoh-storages-be-postgresql.cmxs](./zenoh-storages/latest/ubuntu/16.04/zenoh-storages-be-postgresql.cmxs) <br/> [zenoh-storages-be-sqlite3.cmxs](./zenoh-storages/latest/ubuntu/16.04/zenoh-storages-be-sqlite3.cmxs) |
| ubuntu (x86_64) | 18.04 LTS | [zenohd-0.4.0](./zenoh/latest/ubuntu/18.04/bin/zenohd-0.4.0) | | [zenoh-plugin-http.cmxs](./zenoh-http/latest/ubuntu/18.04/zenoh-plugin-http.cmxs) <br/> [zenoh-plugin-storages.cmxs](./zenoh-storages/latest/ubuntu/18.04/zenoh-plugin-storages.cmxs) <br/> [zenoh-storages-be-influxdb.cmxs](./zenoh-storages/latest/ubuntu/18.04/zenoh-storages-be-influxdb.cmxs) <br/> [zenoh-storages-be-mariadb.cmxs](./zenoh-storages/latest/ubuntu/18.04/zenoh-storages-be-mariadb.cmxs) <br/> [zenoh-storages-be-postgresql.cmxs](./zenoh-storages/latest/ubuntu/18.04/zenoh-storages-be-postgresql.cmxs) <br/> [zenoh-storages-be-sqlite3.cmxs](./zenoh-storages/latest/ubuntu/18.04/zenoh-storages-be-sqlite3.cmxs) |
| [centos](./zenoh/latest/centos) | 7.2.1511 | [zenohd-0.4.0](./zenoh/latest/centos/7.2.1511/zenohd-0.4.0) |  | [zenoh-plugin-http.cmxs](./zenoh-http/latest/centos/7.2.1511/zenoh-plugin-http.cmxs) <br/> [zenoh-plugin-storages.cmxs](./zenoh-storages/latest/centos/7.2.1511/zenoh-plugin-storages.cmxs) <br/> [zenoh-storages-be-influxdb.cmxs](./zenoh-storages/latest/centos/7.2.1511/zenoh-storages-be-influxdb.cmxs) <br/> [zenoh-storages-be-mariadb.cmxs](./zenoh-storages/latest/centos/7.2.1511/zenoh-storages-be-mariadb.cmxs) <br/> [zenoh-storages-be-postgresql.cmxs](./zenoh-storages/latest/centos/7.2.1511/zenoh-storages-be-postgresql.cmxs) <br/> [zenoh-storages-be-sqlite3.cmxs](./zenoh-storages/latest/centos/7.2.1511/zenoh-storages-be-sqlite3.cmxs)|
| raspbian (armv7l) | 9.4 | | | [zenohd-raspbian](./zenoh/unstable/raspian_armv7l/9.4/zenohd) <br/> [zenoh-http-plugin.cmxs](./zenoh/unstable/raspian_armv7l/9.4/zenoh-http-plugin.cmxs) |


### Eclipse Fog05

**Latest version: 0.2.0** \
**Latest release: 2019-09-03**

| OS | Version | Stable Binaries | Unstable Binaries |
| --- |:---:|:---:|:---:|
| ubuntu (x86) | 16.04 LTS | [agent](./fog05/latest/ubuntu/16.04/agent) | [fos_agent](./fog05/unstable/ubuntu/16.04/fos_agent.exe) <br/> [fos_cli_ng](./fog05/unstable/ubuntu/16.04/fos_cli_ng.exe) |
| | 18.04 LTS | |[fos_agent](./fog05/unstable/ubuntu/18.04/fos_agent.exe) <br/> [fos_cli_ng](./fog05/unstable/ubuntu/18.04/fos_cli_ng.exe)|
| ubuntu (arm64)| 18.04 LTS | |[fos_agent](./fog05/unstable/ubuntu_arm64/18.04/fos_agent.exe) <br/> [fos_cli_ng](./fog05/unstable/ubuntu_arm64/18.04/fos_cli_ng.exe)|
| raspbian (armv7l) | 9.4 | | [fos_agent](./fog05/unstable/raspbian_armv7l/9.4/fos_agent.exe) <br/>[fos_cli_ng](./fog05/unstable/raspbian_armv7l/9.4/fos_cli_ng.exe) |



## ATO Prebuilt SDK
This repository contains pre-built binaries for zenoh and YAKS.

### zenoh-C API

**Latest version: 0.4.0** \
**Latest release: 2020-01-13**

| OS | Version | Stable Binaries |  Brew/Debian package | Unstable Binaries |
| --- |:---:|:---:|:---:|:---:|
| [macos](./zenoh-c/latest/macos)   | 10.15.5 | [libzenohc.dylib](./zenoh-c/latest/macos/10.15.5/libzenohc.dylib)  | [brew](./zenoh-c/latest/macos) | |
| [ubuntu (x86_64)](./zenoh-c/latest/ubuntu) | 16.04 LTS | [libzenohc.so](./zenoh-c/latest/ubuntu/16.04/libzenohc.so) | [zenohc.deb](./zenoh-c/latest/ubuntu/16.04/libzenohc-0.3.0_amd64.deb) <br/> [zenohc-dev.deb](./zenoh-c/latest/ubuntu/16.04/zenohc-dev.deb) | [libzenohc.so](./zenoh-c/unstable/ubuntu/16.04/libzenohc.so)|
| | 18.04 LTS | [libzenohc.so](./zenoh-c/latest/ubuntu/18.10/libzenohc.so)  | [zenohc.deb](./zenoh-c/latest/ubuntu/18.10/libzenohc-0.3.0_amd64.deb) <br/> [zenohc-dev.deb](./zenoh-c/latest/ubuntu/16.04/zenohc-dev.deb) | [libzenohc.so](./zenoh-c/unstable/ubuntu/18.04/libzenohc.so) |
| centos-7 (x86_64) | 7.7.1908 | | | |
| raspbian (armv7l) | 9.4 | | | [libzenohc.so](./zenoh-c/unstable/raspian_armv7l/9.4/libzenohc.so)|

### zenoh-java API

**Latest version: 0.4.0** \
**Latest release: 2020-01-13**

| OS | Version | Stable jar | Unstable jar |
| --- |:---:|:---|:---|
| ubuntu (x86_64) | 16.04 LTS | [zenoh-0.4.0.jar](./zenoh-java/latest/ubuntu/16.04/zenoh-0.4.0.jar) <br/> [zenoh-examples-0.4.0.jar](./zenoh-java/latest/ubuntu/16.04/zenoh-examples-0.4.0.jar) | [zenoh-0.4.1-SNAPSHOT.jar](./zenoh-java/latest/ubuntu/16.04/zenoh-0.4.1-SNAPSHOT.jar) <br/>   [zenoh-examples-0.4.1-SNAPSHOT.jar](./zenoh-java/latest/ubuntu/16.04/zenoh-examples-0.4.1-SNAPSHOT.jar) |
| | 18.04 LTS | [zenoh-0.4.0.jar](./zenoh-java/latest/ubuntu/18.04/zenoh-0.4.0.jar) <br/> [zenoh-examples-0.4.0.jar](./zenoh-java/latest/ubuntu/18.04/zenoh-examples-0.4.0.jar) | [zenoh-0.4.1-SNAPSHOT.jar](./zenoh-java/latest/ubuntu/18.04/zenoh-0.4.1-SNAPSHOT.jar) <br/> [zenoh-examples-0.4.1-SNAPSHOT.jar](./zenoh-java/latest/ubuntu/18.04/zenoh-examples-0.4.1-SNAPSHOT.jar) |
