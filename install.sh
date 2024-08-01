#!/bin/sh
[ -z "$1" ] && DEFAULT_GOAL="setup" || DEFAULT_GOAL=$1

CONFIG_DIR=${HOME}/.config

ROOT=$(dirname $0)

setup_distrobox() {
  sh ${ROOT}/setup-distrobox.sh
}

configure_nvim() {
  ln -sf ${ROOT}/nvim ${CONFIG_DIR}/nvim
}

configure_zellij() {
  ln -sf ${ROOT}/zellij ${CONFIG_DIR}/zellij
}

configure_bashrc() {
  ln -sf ${ROOT}/bashrc ${HOME}/.bashrc
}

setup() {
  setup_distrobox && configure_nvim && configure_zellij && configure_bashrc
  echo "setup complete"
}


set -e
$DEFAULT_GOAL
