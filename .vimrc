set number
set tabstop=2     " Spaces in tab
set shiftwidth=2
set expandtab     " Don't replace spaces with tabs
set ai            " Auto indent
set noerrorbells  " No stupid loud bells
syntax on          " Color syntaxing
:command WQ wq
:command Wq wq
:command W w
:command E e
:command Q q
:command Q1 q!
:command W1 w!

inoremap <silent> <F5> <c -O>:call SpellToggle()<cr>
map <silent> <F5> :call SpellToggle()<cr>
function SpellToggle()
    if &spell == 1
            set nospell
        else
            set spell
            set spelllang=nb
    endif
endfunction

" Add newline if more than 80 characters
highlight Overlength ctermbg=red ctermfg=white guibg=#592929
match Overlength /\%81v.\+/
