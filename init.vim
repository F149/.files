
"GENERAL CONFIG ============================================================================================

set nocompatible				        " We're running Vim, not Vi!
set history=1000                        " Remembers the last SET_NUM commands
set title                               " Set the terminal title
set lazyredraw                          " Buffer screen updates instead of updating all the time
set scrolloff=3                         " Maintain more context around the cursor
set termguicolors                       " Use True_Color in the terminal
set completeopt-=preview                " Disable Jedi PyDoc splin window
set nowrap                              " Stop line breaking
set nu          		               	" Show line number
set showcmd                             " Show incomplete cmds down the bottom
set ruler                               " Enable limited line numbering
set showmode                            " Show current mode down the bottom
"set gcr=a:blinkon0				        " Disable cursor blink
set clipboard+=unnamedplus			    " Copy from neovim to system clipboard
set autoread                    		" Reload files changed outside vim
set visualbell                   		" No sounds
set encoding=UTF-8                      " Set encoding UTF8
set cursorline                          " Highlights used line
set tabstop=4          			        " Set the number of space in one TAB
set shiftwidth=4	        			" Set the number of space when use << or >>
set diffopt+=vertical                   " Start diff mode with horizontal/vertical splits
set smarttab		        			" Delete all TAB space
set expandtab		        			" Replace TAB with spaces
set linebreak                           " Wrap lines at convenient points
set wildmenu                            " Used for command line completion
"set wildmode=list:longest,full          " Allows you to expand wildmenu
set hidden                              " Allow Vim to manage multiple buffers effectively
set foldmethod=indent                   " Automatic fold based on the indentation
set hlsearch       	            		" Highlight searches by default
set incsearch                  			" Find the next match as we type the search
set ignorecase                          " Ignore case when searching...
set smartcase                           " ...unless we type a capital
set nobackup                            " Switch off automatic creation of backup files
set nowritebackup                       " Changes the default which is:
                                        "   - write buffer to new file
                                        "   - delete the original file
                                        "   - rename the new file
set list listchars=tab:\ \ ,trail:·     " Display tabs and trailing spaces visually
autocmd BufWritePre * :%s/\s\+$//e      " Automatically remove trailing whitespace (*, *.py, *.c etc.)
set t_Co=256

"NERDTree
    let NERDTreeShowHidden = 1
    let NERDTreeQuitOnOpen = 1
    let NERDTreeMinimalUI  = 1
    let NERDTreeDirArrows  = 1
    "let g:NERDTreeDirArrowExpandable = '▸'
    "let g:NERDTreeDirArrowCollapsible = '▾'

"Tabline.vim enable the close button in the upper right corner
    let g:tablineclosebutton = 1

"Deoplete
    let g:deoplete#enable_at_startup = 1
    let g:python_host_prog  = '/usr/bin/python'
    let g:python3_host_prog = '/usr/local/bin/python3'
    let g:deoplete#sources#clang#libclang_path = '/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'        "C/C++ autocomplite
    let g:deoplete#sources#clang#clang_header = '/Library/Developer/CommandLineTools/usr/lib/clang/10.0.0/include'   "C/C++ autocomplite
    inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"EMMET
    let g:user_emmet_mode='a'                "EMMET enable all function in all mode.
"    let g:user_emmet_leader_key='<C-m>'      "EMMET remap the default <C-Y> leader
"    let g:user_emmet_install_global = 0      "EMMET enable only html/css
"    autocmd FileType html,css EmmetInstall   "EMMET enable only html/css

"Apply Neovim configurations without restarting
    augroup au_common
        au!
        au BufWritePost init.vim,.vimrc source %
    augroup END

"Startify disable Cowsay header
    let g:startify_custom_header =[]

"IndentLine
        let g:indentLine_char = '|'
        "let g:indentLine_color_term = "1e667c"
        "let g:indentLine_char_list = ['|', '¦', '┆', '┊', '│']



"KEY_MAP ====================================================================================================

"NERDTree
    " Open NERDTree
        map <C-a> :NERDTreeToggle<CR>
    " Tab navigation:ALT + <Right>-next, <Left>-previous
        map  <C-d> :tabn<CR>
        "map  <C-x> :tabp<CR>
        "nnoremap <A-F1> 1gt
        "nnoremap <A-F2> 2gt
        "nnoremap <A-F3> 3gt

"Vim-Move
        let g:move_key_modifier = 'C'

"Ctrlp.vim
        let g:ctrlp_map = '<c-p>'
		"let g:ctrlp_cmd = 'CtrlP'

"TagbarToggle
        nmap <F8> :TagbarToggle<CR>

"Run current file in vim
    nnoremap <F5> <esc>:w<enter>:!%:p<enter>
    inoremap <F5> <esc>:w<enter>:!%:p<enter>

"PLUGINS ====================================================================================================
call plug#begin('~/.local/share/nvim/plugged')

"General
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'matze/vim-move',
    Plug 'mkitt/tabline.vim',
    Plug 'ervandew/supertab',
    Plug 'Yggdroot/indentLine',
    Plug 'mhinz/vim-startify',

"Search and navigation
    Plug 'ctrlpvim/ctrlp.vim',
    Plug 'google/vim-searchindex',
    Plug 'majutsushi/tagbar',

"Autocomplete
    Plug 'zchee/deoplete-jedi',
    Plug 'zchee/deoplete-clang'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'jiangmiao/auto-pairs',
    Plug 'mattn/emmet-vim',

"Python
    Plug 'mitsuhiko/vim-python-combined',

"Advanced
    Plug 'terryma/vim-multiple-cursors',
	Plug 'sts10/vim-zipper',

"Theme
	Plug 'vim-airline/vim-airline',
	Plug 'whatyouhide/vim-gotham',
	Plug 'vim-airline/vim-airline-themes',
	"Plug 'ryanoasis/vim-devicons',
	"Plug 'morhetz/gruvbox',


call plug#end()



"THEME ======================================================================================================

"Set airline_theme
    let g:airline_theme='gotham256'
    "let g:airline_theme='distinguished'
    "let g:airline_theme='gruvbox'

"Grovbox setup
    "let g:gruvbox_italic = '1'
    "set background=dark
    "let g:gruvbox_contrast_dark = 'hard'
    "let g:gruvbox_italicize_comments = '1'

"Set colorsheme
    "colorscheme gruvbox
    colorscheme gotham256
    highlight Comment gui=italic

"VIM_COLOR ==================================================================================================
"Set number background color
    hi CursorLineNr guibg='#6A0C0B'
    "gui='bold'
    "hi LineNr guifont='Arame:14'

"Set braces color
    "syn match Braces display '[{}()\[\]]'
    "hi Braces guifg=#599cab gui=italic

"Set tab bar color
    hi TabLineSel guibg='#6A0C0B' guifg='#f0f2cc' gui=italic
    hi TabLine gui=italic
    "hi TabLineSel guifg='#0c1014' guibg='#f0f2cc' gui=bold

"SEEING IS BELIEVING ========================================================================================
" " Annotate every line
"nmap <leader>b :%!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk<CR>;
"  " Annotate marked lines
"nmap <leader>n :%.!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk --xmpfilter-style<CR>;
"  " Remove annotations
"nmap <leader>c :%.!seeing_is_believing --clean<CR>;
"  " Mark the current line for annotation
"nmap <leader>m A # => <Esc>
"  " Mark the highlighted lines for annotation
"vmap <leader>m :norm A # => <Esc>




