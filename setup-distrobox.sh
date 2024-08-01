#/bin/sh
set -e

[ -n  "$CONTAINER_ID" ] && echo "please execute from host." && exit 42

echo "This will take a while, please be patient."
distrobox ls | grep tumbleweed || distrobox assemble create --file distrobox/default.ini
