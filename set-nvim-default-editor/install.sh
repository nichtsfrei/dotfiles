#/bin/sh

if [[ $(id -u) -ne 0 ]] ; then echo "Please run as root" ; exit 1 ; fi

cp ./nvim-default-editor.csh /etc/profile.d/
cp ./nvim-default-editor.sh /etc/profile.d/
cp ./nvim-default-editor.fish /usr/share/fish/vendor_conf.d/
