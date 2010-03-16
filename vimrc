set runtimepath=~/.vimtim,~/.vimtim/after,$VIMRUNTIME

set background=light
syntax on

set et
set sw=4
set smarttab
set autoindent
set cursorline

set hlsearch

" ignorecase when searching
set ignorecase

set number

" Tabs keybindings
map <C-t> :tabnew<CR>
map <C-left> :tabp<CR>
map <C-right> :tabn<CR>
imap <C-t> <Esc>:tabnew<CR>
imap <C-left> <Esc>:tabp<CR>
imap <C-right> <Esc>:tabn<CR>

" The == re-indents the line to suit its new position
nnoremap <M-up> mz:m-2<CR>`z==
nnoremap <M-down> mz:m+<CR>`z==
inoremap <M-up> <Esc>:m-2<CR>==gi
inoremap <M-down> <Esc>:m+<CR>==gi
vnoremap <M-up> :m'<-2<CR>gv=`>my`<mzgv`yo`z
vnoremap <M-down> :m'>+<CR>gv=`<my`>mzgv`yo`z

filetype plugin on

autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=html.django_template " For SnipMate
autocmd FileType sass set expandtab

"" remove extra whitespace
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

" Onmicomplete settings
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

inoremap <Nul> <C-x><C-o>

"Nerdtree
map <F2> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$','\.swp$'] "ignore compiled python files

autocmd BufRead *.py nmap <F9> :!python %<CR>
autocmd BufRead *.py nmap <F8> :!<CR>
