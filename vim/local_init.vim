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

" call s:h("IncSearch", s:bg, s:red, "")
" call s:h("Search", s:bg, s:yellow, "")

"" This didn't seem to work...
" Plug 'haya14busa/incsearch.vim'
" map /  <Plug>(incsearch-forward)
" map ?  <Plug>(incsearch-backward)
" map g/ <Plug>(incsearch-stay)

" Plug 'haya14busa/is.vim'

" function! s:hl_colorscheme_modify_molokai()
"   " if g:colors_name isnot# 'molokai'
"   "   return
"   " endif
"   highlight clear MatchParen
"   highlight default MatchParen term=bold ctermfg=166 gui=bold guifg=#ef5939
"   highlight clear Search
"   highlight default Search term=bold cterm=bold ctermbg=24 guibg=#13354A ctermfg=244 guifg=#808080
" endfunction
" autocmd ColorScheme * call s:hl_colorscheme_modify_molokai()
" colorscheme molokai

if g:colors_name is# 'molokai'
    highlight clear MatchParen
    highlight default MatchParen term=bold ctermfg=166 gui=bold guifg=#ef5939
    highlight clear Search
    highlight default Search term=bold cterm=bold ctermbg=24 guibg=#13354A ctermfg=244 guifg=#808080
    highlight clear IncSearch
    highlight default IncSearch term=bold cterm=bold ctermbg=LightYellow guibg=#13354A ctermfg=DarkGray guifg=#808080
endif
