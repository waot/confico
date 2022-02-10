set nocompatible              " be iMproved, required
set title
" set mouse=a
" set clipboard=unnamedplus

set noshowmode
"let g:lightline = {'colorscheme':'simpleblack'}

" Hides the tilde symbols

"filetype off                  " required

"set rtp+=~/.vim/bundle/Vundle.vim

" VViki setup - relies on the default wiki root dir (~/wiki)
nnoremap <leader>ww :e ~/wiki/index.adoc<cr>

call plug#begin()

Plug 'ratfactor/vviki'
Plug 'suan/vim-instant-markdown'
"Plug 'nvim-lualine/lualine.nvim'
"Plug 'itchyny/lightline.vim'
Plug 'ful1e5/onedark.nvim'
Plug 'fxn/vim-monochrome'
Plug 'lokaltog/vim-monotone'
Plug 'terminalnode/sway-vim-syntax'
Plug 'vim-python/python-syntax'                    " Python highlighting   
Plug 'ap/vim-css-color'                            " Color previews for CSS
Plug 'tek256/simple-dark'
Plug 'aditya-azad/candle-grey'
"Plug 'bdd/noclown.vim'

call plug#end()

"lua << END
"require('lualine').setup {
"  options = {
"    theme = 'onedark-nvim',
"    -- ... your lualine config
"  }
"}
"END

"set noswapfile                  " No swap
set t_Co=256                    " Set if term supports 256 colors<F12>.

colorscheme monotone "candle-grey
hi Normal ctermbg=16 guibg=#000000
hi clear Statusline
hi StatusLine guibg=#000000
hi EndOfBuffer ctermfg=16 guibg=#000000
set noru

"override_background(black)
 
"candle-grey "monotone candle-grey
"colorscheme simple-dark

"set number relativenumber 

set number

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

