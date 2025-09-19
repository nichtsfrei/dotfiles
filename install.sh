#!/bin/sh
[ -z "$1" ] && GOAL="setup" || GOAL=$1

CONFIG_DIR=${HOME}/.config

SCRIPT_BASE_DIR=$(dirname $(readlink -f $0))

echo "SCRIPT_BASE_DIR: $SCRIPT_BASE_DIR CONFIG_DIR: $CONFIG_DIR GOAL: $GOAL"
sh $SCRIPT_BASE_DIR/prepare-fonts.sh
declare -a linkables
linkables[0]="nvim,${CONFIG_DIR}/nvim"
linkables[1]="tmux,${CONFIG_DIR}/tmux"
linkables[2]="scripts,${HOME}/.scripts"
linkables[3]="gitconfig,${HOME}/.gitconfig"
linkables[4]="fonts,${HOME}/.fonts"
linkables[5]="fish/functions/fish_ssh_agent.fish,${CONFIG_DIR}/fish/functions/fish_ssh_agent.fish"

setup_distrobox() {
  distrobox ls | grep my-distrobox || distrobox assemble create --file distrobox/default.ini
}

configure() {
  for linkable in ${linkables[@]}; do
    IFS=',' read -r -a linkable <<< "$linkable"
    local source="${SCRIPT_BASE_DIR}/${linkable[0]}"
    local target="${linkable[1]}"
    #TODO: when distrobox is not available and e.g. on a machine that does not work well
    # with symlinking consider a flag to hardlink/copy
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
  #TODO: make configurable
  [ -z "$CONTAINER_ID" ] && setup_distrobox
  configure
}

set -e
$GOAL
