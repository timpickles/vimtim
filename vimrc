set runtimepath=~/.timvim,~/.timvim/after,$VIMRUNTIME

set background=light
syntax on

set sw=4
set smarttab

set number

map <F2> :NERDTreeToggle<CR>
map <C-t> :tabnew<CR>
map <C-,> :tabp<CR>
map <C-right> :tabn<CR>

filetype plugin on
