if type -q vimx
    alias vim='vimx -c "let g:tty='\'(tty)\''"'
else
    alias vim='vim -c "let g:tty='\'(tty)\''"'
end

if type -q rg
    export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --no-ignore-vcs'
end

if test -e $HOME/.config/fish/specific.fish
    source $HOME/.config/fish/specific.fish
end

set PATH $PATH /usr/local/bin/ $HOME/.local/bin/ /$HOME/local/bin/ $HOME/go/bin/
