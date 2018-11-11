"         _                    
"  __   _(_)_ __ ___  _ __ ___ 
"  \ \ / / | '_ ` _ \| '__/ __|
"   \ V /| | | | | | | | | (__ 
"    \_/ |_|_| |_| |_|_|  \___|
"


"" basic
set fenc=utf-8
set backup
set backupdir=~/.vim/tmp
set swapfile
set directory=~/.vim/tmp
set autoread
set hidden
set showcmd
noremap! <C-j> <esc>


"" look
"syntax on
syntax enable
set number
set relativenumber
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set wildmode=list:longest
nnoremap j gj
nnoremap k gk


"" Tab
set list listchars=tab:\▸\-
set expandtab
set tabstop=2
set shiftwidth=2


"" search
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>


"" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'
Plug 'jeetsukumaran/vim-nefertiti'
Plug 'limadm/vim-blues'
Plug 'plasticboy/vim-markdown'
"Plug 'kannokanno/previm'
Plug 'previm/previm'
Plug 'tyru/open-browser.vim'
Plug 'vim-scripts/fcitx.vim'
Plug 'sophacles/vim-processing'
Plug 'othree/xml.vim'
Plug 'davidhalter/jedi-vim'
Plug 'justmao945/vim-clang'
Plug 'thinca/vim-quickrun'
"Plug 'dylanaraps/wal.vim'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'tomasr/molokai'
Plug 'jnurmine/zenburn'
Plug 'itchyny/calendar.vim'
"Plug 'mrtazz/simplenote.vim'
"Plug 'mattn/vimplenote-vim'
"Plug 'mattn/webapi-vim'
"Plug 'vim-scripts/head.vim'
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'joshdick/onedark.vim'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'jdkanani/vim-material-theme'
Plug 'jonathanfilip/vim-lucius'

call plug#end()


"" set filetype
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.py set filetype=python


"" execution
autocmd BufNewFile,BufRead *.py nnoremap <C-e> :!python %<CR>
autocmd BufNewFile,BufRead *.sh nnoremap <C-e> :!sh %<CR>
autocmd BufNewFile,BufRead *.pde nnoremap <C-e> :make<CR>
autocmd BufNewFile,BufRead *.md nnoremap <C-e> :PrevimOpen<CR>
autocmd BufNewFile,BufRead *.md nnoremap <C-p> :!~/scripts/texMarkDown/outputPDF.sh %:r<CR>
autocmd BufNewFile,BufRead *.md nnoremap <C-t> :!~/scripts/texMarkDown/outputHTML.sh<CR>
autocmd BufNewFile,BufRead *.c nnoremap <C-c> :!clang -o '%:r' '%'<CR>
autocmd BufNewFile,BufRead *.c nnoremap <C-g> :!gcc -lm -Wall '%' -o '%:r'<CR>
autocmd BufNewFile,BufRead *.c nnoremap <C-e> :!./'%:r'<CR>


" disable folding
let g:vim_markdown_folding_disabled = 1


" lucius
let g:lucius_style = 'dark'
let g:lucius_contrast = 'high'
let g:lucius_contrast_bg = 'normal'
colorscheme lucius

"" pywal
"colorscheme wal

"colorscheme jellybeans
"colorscheme zenburn
"
"set background=dark    " Setting dark mode
"colorscheme solarized
"colorscheme Tomorrow-Night

"colorscheme onedark
"set t_Co=256
"set background=dark
"if !has('gui_running')
"  let g:solarized_termcolors=&t_Co
"  let g:solarized_termtrans=1
"endif
"colorscheme solarized
"set background=dark
"colorscheme material-theme

"" gruvbox
"colorscheme gruvbox
"set background=dark    " Setting dark mode
""set background=light   " Setting light mode
"" transparency background
highlight Normal ctermbg=None    
""hi Normal guibg=NONE ctermbg=NONE


"" vimtex
let g:vimtex_compiler_latexmk = {
            \ 'background' : 1,
            \ 'build_dir' : '',
            \ 'continuous' : 1,
            \ 'callback' : 0,
            \ 'options' : [
            \   '-pdfdvi',
            \   '-verbose',
            \   '-file-line-error',
            \   '-synctex=1',
            \   '-interaction=nonstopmode',
            \ ],
            \}
let g:vimtex_compiler_latexmk_engines = { '_' : '-pdfdvi' }
let g:vimtex_view_general_viewer = 'mupdf'


"" powerline
"set rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim/
"set laststatus=2
"set t_Co=256

"" statusline
set laststatus=2
" Filename
set statusline=%F
" Edited
set statusline+=%m
" Read-only
set statusline+=%r
" HELP page
set statusline+=%h
" Prevew window
set statusline+=%w
" Right-aligned
set statusline+=%=
" File encoding and ff
set statusline+=[%{&fileencoding}:%{&ff}]
set statusline+=\ 
" File type
set statusline+=%y 
set statusline+=\ 
" Current Line : Column / Total num of Lines
set statusline+=[%l:%c/%L]


" autopep
" original http://stackoverflow.com/questions/12374200/using-uncrustify-with-vim/15513829#15513829
function! Preserve(command)
    " Save the last search.
    let search = @/
    " Save the current cursor position.
    let cursor_position = getpos('.')
    " Save the current window position.
    normal! H
    let window_position = getpos('.')
    call setpos('.', cursor_position)
    " Execute the command.
    execute a:command
    " Restore the last search.
    let @/ = search
    " Restore the previous window position.
    call setpos('.', window_position)
    normal! zt
    " Restore the previous cursor position.
    call setpos('.', cursor_position)
endfunction

function! Autopep8()
    call Preserve(':silent %!autopep8 --ignore=E501 -')
endfunction
" keymap
"nnoremap <S-f> :call Autopep8()<CR>
" auto
"autocmd BufWrite *.{py} :call Autopep8()


"" Memo Dropbox
"function! DropboxMemo()
"  ""let str = systemlist('date +"%y%m%d_%H%M_%S".md')[0]
"  ""let str = systemlist('head -n 1 "%"')[0]
"  ""let head = system("head -n 1 " . shellescape(expand('%:p')))
"  let str = system("python ~/scripts/memotool/getHeadData.py " . shellescape(expand('%:p')))
"  ""let str = substitute(head, '^\s*\(.\{-}\)\s*$', '\1', '')
"  call rename(expand('%'), expand('%:p:h') . "/" . str)
"  ""call rename(expand('%'), str)
"endfunction
"autocmd BufWritePost */Dropbox/Memo/*.{md} :call DropboxMemo()

"function! Typora()
"    " Launch Typora
"    call system("typora " . expand('%:p'))
"    setlocal autoread
"endfunction

"command! Typora call Typora()


"" set clang options for vim-clang
let g:clang_c_options = '-std=c11'
let g:clang_cpp_options = '-std=c++1z -stdlib=libc++ --pedantic-errors'
let g:clang_format_auto = 1


"" clipboard
set clipboard=unnamedplus

"" previm
let g:previm_open_cmd = 'chromium'
let g:previm_enable_realtime = 1
