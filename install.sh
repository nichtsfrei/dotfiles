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
  distrobox ls | grep tumbleweed || distrobox assemble create --file distrobox/default.ini
}

configure() {
  for linkable in ${linkables[@]}; do
    IFS=',' read -r -a linkable <<< "$linkable"
    local source="${SCRIPT_BASE_DIR}/${linkable[0]}"
    local target="${linkable[1]}"
    if [ -e "${target}" ]; then
      if [ "$(readlink -f $target)" != "${source}" ]; then
        echo "File ${target} is not a symlink to ${source}. Please remove it manually."
      fi
      continue
    fi
    ln -s ${source} ${target}
  done
}

setup() {
  #[ -z "$CONTAINER_ID" ] && setup_distrobox
  configure
}

set -e
$GOAL
