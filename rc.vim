" my vimrc, linked to at ~/.vimrc

" basic qol
inorem jk <esc>
nnorem ; <cmd>w<cr>
let g:netrw_liststyle=3
let mapleader=" "
nnorem <leader>th <cmd>20Lexplore<cr>
nnorem <leader>tl <cmd>20Lexplore!<cr>
nnorem <leader>tt <cmd>Rexplore<cr>
nnorem <leader>tc <cmd>20Lexplore ~/.config/nvim<cr>
nnorem <leader><tab> <cmd>bn<cr>
nnorem <leader><s-tab> <cmd>tabN<cr>

" nohl on basic movements
nnorem h <cmd>nohl<cr>h
nnorem j <cmd>nohl<cr>j
nnorem k <cmd>nohl<cr>k
nnorem l <cmd>nohl<cr>l

colo slate

dig ZZ 8484
dig ** 215
