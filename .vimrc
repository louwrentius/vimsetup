set expandtab
set shiftwidth=4
set tabstop=4
set vb
syntax on
let g:is_bash=1
let g:sh_fold_enabled=1
highlight Folded ctermfg=6 ctermbg=0 
highlight FoldColumn ctermfg=6 ctermbg=0 
set ls=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 
set spellfile=~/.customdict.en.add
execute pathogen#infect()
filetype plugin indent on
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set foldmethod=indent

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
