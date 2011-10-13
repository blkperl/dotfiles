color elflord
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set number
set list listchars=tab:>-,trail:.,extends:>,precedes:<
autocmd BufWritePre *.pp :%s/\s\+$//e
set bs=2

