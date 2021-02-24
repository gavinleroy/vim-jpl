" ============================================================================
" File:        ftdetect/jpl.vim
" Description: JPL filetype detection script for vim.
" Maintainer:  Gavin Gray Roberts <gavinleroy6 at gmail dot com>
" Version:     0.0.0
" License:     MIT License
" ============================================================================

autocmd BufRead,BufNewFile *.jpl call s:set_jpl_filetype()

function! s:set_jpl_filetype() abort
    if &filetype !=# 'jpl'
        set filetype=jpl
    endif
endfunction
