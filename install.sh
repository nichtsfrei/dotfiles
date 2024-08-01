#!/bin/sh
[ -z "$1" ] && GOAL="setup" || GOAL=$1

CONFIG_DIR=${HOME}/.config

SCRIPT_BASE_DIR=$(dirname $(readlink -f $0))

echo "SCRIPT_BASE_DIR: $SCRIPT_BASE_DIR CONFIG_DIR: $CONFIG_DIR GOAL: $GOAL"
declare -a linkables
linkables[0]="nvim,${CONFIG_DIR}/nvim"
linkables[1]="zellij,${CONFIG_DIR}/zellij"
linkables[2]="bashrc,${HOME}/.bashrc"
linkables[3]="scripts,${HOME}/.scripts"

setup_distrobox() {
  sh ${SCRIPT_BASE_DIR}/setup-distrobox.sh
}

configure() {
  for linkable in ${linkables[@]}; do
    IFS=',' read -r -a linkable <<< "$linkable"
    ln -sf ${SCRIPT_BASE_DIR}/${linkable[0]} ${linkable[1]}
  done
}

setup() {
  setup_distrobox && configure
}

set -ex
$GOAL
