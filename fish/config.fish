alias vim='vim -c "let g:tty='\'(tty)\''"'
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --no-ignore-vcs'

if test -e $HOME/.config/fish/specific.fish
    source $HOME/.config/fish/specific.fish
end
