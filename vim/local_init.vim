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
