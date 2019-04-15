"" My Config

let g:snips_author = "Peter Lesslie"

"" See https://github.com/neovim/neovim/issues/5990
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0

"" Don't indent in namespaces in C/C++
set cino=N-s

"" Use clang + c++17 for syntastic checker
""" TODO(peter): detect if clang or gcc present?
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++17'

autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>

function! SwitchSourceHeader()
  "update!
  if (expand ("%:e") == "cpp")
    find %:t:r.h
  else
    find %:t:r.cpp
  endif
endfunction

nmap <leader>s :call SwitchSourceHeader()<CR>

cabbr <expr> %% expand('%:p:h')

if g:colors_name is# 'molokai'
    highlight clear MatchParen
    highlight default MatchParen term=bold ctermfg=166 gui=bold guifg=#ef5939
    highlight clear Search
    highlight default Search term=bold cterm=bold ctermbg=24 guibg=#13354A ctermfg=244 guifg=#808080
    highlight clear IncSearch
    highlight default IncSearch term=bold cterm=bold ctermbg=LightYellow guibg=#13354A ctermfg=DarkGray guifg=#808080
endif

""                                                    *'g:ctrlp_working_path_mode'*
"" When starting up, CtrlP sets its local working directory according to this
"" variable: >
""   let g:ctrlp_working_path_mode = 'ra'
"" <
""   c - the directory of the current file.
""   a - like "c", but only applies when the current working directory outside of
""       CtrlP isn't a direct ancestor of the directory of the current file.
""   r - the nearest ancestor that contains one of these directories or files:
""       .git .hg .svn .bzr _darcs
""   w - begin finding a root from the current working directory outside of CtrlP
""       instead of from the directory of the current file (default). Only applies
""       when "r" is also present.
""   0 or <empty> - disable this feature.
"let g:ctrlp_working_path_mode = 0
let g:ctrlp_working_path_mode = 'ra'

""  *'g:ctrlp_follow_symlinks'*
"" If non-zero, CtrlP will follow symbolic links when listing files: >
""   let g:ctrlp_follow_symlinks = 0
"" <
""   0 - don't follow symbolic links.
""   1 - follow but ignore looped internal symlinks to avoid duplicates.
""   2 - follow all symlinks indiscriminately.
let g:ctrlp_follow_symlinks = 1

""   *'g:ctrlp_mruf_save_on_update'*
"" Set this to 0 to disable saving of the MRU list to hard drive whenever a new
"" entry is added, saving will then only occur when exiting Vim: >
let g:ctrlp_mruf_save_on_update = 0
