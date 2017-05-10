" Enable Numbering
set nu

" No line wrapping
set nowrap

" Highlight current line
set cursorline

" Folding Options
set foldenable
set foldlevelstart=10
set foldnestmax=1
set foldmethod=indent
nnoremap <silent><leader><C-space> za

" Auto open NERDTree if no argument
autocmd vimenter * if !argc() | NERDTree | endif
autocmd vimenter * wincmd p

" Remove search highlight with leader + space
nnoremap <silent><leader><space> : nohlsearch<CR>

" Pathogen
execute pathogen#infect()

" For LaTeX
let g:syntastic_mode_map = {'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': []}
nnoremap <C-w>e :SyntasticCheck<CR> 

" Still under research (own)
set omnifunc=syntaxcomplete#Complete
