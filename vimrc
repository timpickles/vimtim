set runtimepath=~/.vimtim,~/.vimtim/after,$VIMRUNTIME

set background=light
syntax on

set sw=4
set smarttab

set number

map <F2> :NERDTreeToggle<CR>
map <C-t> :tabnew<CR>

filetype plugin on

autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=html.django_template " For SnipMate
