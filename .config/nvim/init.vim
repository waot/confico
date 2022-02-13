set nocompatible              " be iMproved, required
set title
set noruler
" set mouse=a
" set clipboard=unnamedplus

set noshowmode
set noshowcmd
augroup cmdline
    autocmd!
    autocmd CmdlineLeave : echo ''
augroup end

"let g:lightline = {'colorscheme':'simpleblack'}

set statusline=\ \ 
"set statusline+=%f
set statusline+=%{&modified?'+':''}

let g:currentmode={
       \ 'n'  : '',
       \ 'v'  : 'visual',
       \ 'V'  : 'v·line ',
       \ "\<C-V>" : 'v·block ',
       \ 'i'  : '',
       \ 'R'  : 'r ',
       \ 'Rv' : 'v·replace ',
       \ 'c'  : '',
       \}

set statusline+=\ %{(g:currentmode[mode()])}

nnoremap <F5> "=strftime('%Y-%m-%d')<CR>P
inoremap <F5> <C-R>=strftime('%Y-%m-%d')<CR>

nnoremap <F11> :Goyo<CR>i
inoremap <F11> <Esc>:Goyo<CR>


"filetype off                  " required

"set rtp+=~/.vim/bundle/Vundle.vim

" VViki setup - relies on the default wiki root dir (~/wiki)
nnoremap <leader>ww :e ~/wiki/index.adoc<cr>

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

call plug#begin()

" Writing-mode
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'liuchengxu/vim-which-key'
"Plug 'ratfactor/vviki'
"Plug 'nvim-lualine/lualine.nvim'
"Plug 'itchyny/lightline.vim'

" Syntax
Plug 'terminalnode/sway-vim-syntax'
Plug 'vim-python/python-syntax'     " Python highlighting   
Plug 'suan/vim-instant-markdown'
Plug 'ap/vim-css-color'             " Color previews for CSS

" Theme
Plug 'lokaltog/vim-monotone'
Plug 'tek256/simple-dark'
Plug 'aditya-azad/candle-grey'
Plug 'fxn/vim-monochrome'
Plug 'ful1e5/onedark.nvim'

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
hi EndOfBuffer ctermfg=16 guibg=#000000 	" Hides the tilde symbols
hi StatusLine guibg=#000000
hi clear Statusline

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

