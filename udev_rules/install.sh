#/bin/sh

set -ex
install -d /lib/udev/rules.d
install -m 0644 *.rules /lib/udev/rules.d
