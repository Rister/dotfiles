" Set pure Vim mode
set nocompatible

" Proper Tabstops
set smartindent
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4

" The following line is to stop the auto expandtab from trashing Makefiles
autocmd FileType make setlocal noexpandtab

" This displays the line numbers on the left edge of the window.
set number
set numberwidth=5

" Line at 80 columns
set colorcolumn=80
set fo-=t
set nowrap
set ruler
set tw=79

" Allow unsaved buffers to be hidden
set hidden

" Add a constant status line
set laststatus=2

" Make the backspace key behave properly in insert mode
set backspace=indent,eol,start

" Make the command-line completion better
set wildmenu
filetype plugin indent on

" Syntax Coloring
if has('gui_running')
    let g:solarized_contrast="high"
    let g:solarized_visibility="high"
    colorscheme solarized
    set background=dark
endif
syntax on

" Store the swap files in the default temporary directory
if has("win32") || has("win64")
    set directory=$TMP
else
    set directory=/tmp
end

" Don't keep backup files around
set nobackup
set writebackup


" GUI Options
if has('gui_running')

    " Don't show the toolbar in the GUI version
    set guioptions-=T

    " Set the GUI font to something more sane than fixedsys
    set guifont=Courier_New:h9:cANSI

endif

" Turn on Spell Check
set spell

" Decent Search highlighting
set hlsearch
nnoremap <esc> :noh<return><esc>
