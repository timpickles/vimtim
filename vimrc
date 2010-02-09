set runtimepath=~/.vimtim,~/.vimtim/after,$VIMRUNTIME

set background=light
syntax on

set sw=4
set smarttab

set number

map <C-t> :tabnew<CR>

filetype plugin on

autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=html.django_template " For SnipMate

" Onmicomplete settings
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

inoremap <Nul> <C-x><C-o>

"Nerdtree
map <F2> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$','\.swp$'] "ignore compiled python files
