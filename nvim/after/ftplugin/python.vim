set colorcolumn=80
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent smartindent
setlocal path=.,**
setlocal wildignore=*.pyc
autocmd BufWritePre *.py execute ':Black'

" escape regex: s/\(|\|\\\)/\\\1/g
set include=^\\s*\\(from\\\|import\\)\\s*\\zs\\(\\S\\+\\s\\{-}\\)*\\ze\\($\\\|\ as\\)
setlocal define=^\\s*\\<\\(def\\\|class\\\|=\\)\\>

function! PyInclude(fname)
    let parts = split(a:fname, ' import ')
    let l = parts[0]
    if len(parts) > 1
        let r = parts[1]
        let joined = join([l, r], '.')
        let fp = substitute(joined, '\.', '/', 'g') . '.py'
        let found = glob(fp, 1)
        if len(found)
            return found
        endif
    endif
    let fp = substitute(l, '\.', '/', 'g') . '.py'
    let found = glob(fp, 1)
    if len(found)
        return fp
    endif
    " rename
    let parts2 = split(fp, '/')
    let found2 = glob(parts[-1], 1)
    if len(found2)
        return found
    endif
    echom parts2[-1] . " not found"
    return 
endfunction

setlocal includeexpr=PyInclude(v:fname)
