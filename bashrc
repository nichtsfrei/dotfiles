# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.
EDITOR="nvim"

test -s ~/.alias && . ~/.alias || true

check_path_or_add() {
    local path="$1"
    case ":${PATH}:" in
        *:"$path":*)
            ;;
        *)
            # Prepending path in case a system-installed binary needs to be overridden
            export PATH="$path:$PATH"
            ;;
    esac
}
# add binaries to PATH if they aren't added yet
check_path_or_add "$HOME/.local/bin"
check_path_or_add "$HOME/.scripts"
check_path_or_add "$HOME/.cargo/bin"


[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh

[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion
