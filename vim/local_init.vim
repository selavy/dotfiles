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

" Make Ctrl-P search from directory in which it was opened
let g:ctrlp_working_path_mode = 0
let g:ctrlp_follow_symlinks = 1
