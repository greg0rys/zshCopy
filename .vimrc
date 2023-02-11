
"set number will number all the lines on the display for me"
set number
"color theme italics"
let g:jellybeans_use_term_italics = 1
"syntax on will enable syntax highlighting for writing programs / scripts"
syntax on
"show mode will show me what mode I am currently editing"
set showmode
"set flash will cause vim to flash instead of making its defualt chime noise"
set flash "we don't have support for this feature in WSL versions of Linux"

"Highlight the cursor line underneath the cursor horizontially"
set cursorline

"Highlight cursor line underneath vertically; with both of these applied the cursor will be highlighted as a cross"
set cursorcolumn
"set the tab width to 4 spaces"
set tabstop=4
"set the indention options for files like code files etc"
set shiftwidth=4
set autoindent
set smartindent
"set lines to 79 characters as C++ standard"
set wrapmargin=79
set wrap
"set the text width to 79 chars and then make it wrap per C++ style"
set textwidth=79
"show where the 79th character will apear on the line
set colorcolumn=79
"make lines break when they reach the text width"
set linebreak
"While searching a file highlight matches"
set incsearch
set hls
"Enable auto completion menu after tab is pressed when entering a command"
set wildmenu

"use utf-8 encoding for nerdfonts"
set encoding=UTF-8
  "Plugins use a special syntax please see ~./vimnotes/plugins.md"
  " for any plugins that throws an error when trying to use"
  " not an enditor command its due to plugins .vim file not beings saved with"
	"unix line feeds. to fix it cd into .vim/plugged/nameofpluginsfolder"
	"then find ever .vim file in all directories and sub directories"
	"in each dir that has .vim files run the command dos2unix *.vim it will"
	"convert all the .vim files to have unix line feed endings and then no
	"more"
	"errors"
  "Set nerdtree to toggle with F2"
  map <F2> :NERDTreeToggle<CR>
"PLUGINS ***"
call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'bluz71/vim-moonfly-colors'
Plug 'ryanoasis/vim-devicons'
Plug 'gabrielelana/vim-markdown'
Plug 'luochen1990/rainbow'
Plug 'ghifarit53/tokyonight-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/Rainbow-Parenthesis'
Plug 'StanAngeloff/php.vim'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

let g:airline_theme='supernova'
"Color Theme Settings"
colorscheme PaperColor
set background=dark
let g:lightline = { 'colorscheme': 'papercolor' }
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
"VIMSCRIPTS"
let g:rainbow_active = 1

"php .vim plugin setup"
let g:php_var_selector_is_identifier = 1

"Mapping for nerdtree plugin"
nnoremap <F6> :NERDTree<CR>

"autostart nerdtree and put the cursor back in the editor"
autocmd VimEnter * NERDTree | wincmd p
"exit vim if nerdtree if the only tab open stops us from having to :q"
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


"dont make the screen reload when reading vims source file"
set lazyredraw
"allow the mouse to scroll the screen in vim"
set mouse=a
"confirm writing the file if any changes have happened"
set confirm

"key mapping to clear hls results after done with search"
nnoremap <CR> :noh<CR><CR>
