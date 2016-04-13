
" VUNDLE
" =============================================================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Bundle 'VundleVim/Vundle.vim'
"Bundle 'beyondwords/vim-twig'
Bundle 'kien/ctrlp.vim'
"Bundle 'Shougo/unite.vim'
"Bundle 'm2mdas/phpcomplete-extended'
Bundle 'jistr/vim-nerdtree-tabs'
"Bundle 'arnaud-lb/vim-php-namespace'
Bundle 'scrooloose/syntastic'
Bundle 'flazz/vim-colorschemes'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'NLKNguyen/papercolor-theme'
Bundle 'edkolev/tmuxline.vim'
Bundle 'pearofducks/ansible-vim'
"Bundle 'taglist.vim'
Bundle 'wincent/command-t'
"Bundle 'FuzzyFinder'
Bundle 'majutsushi/tagbar'
Bundle 'chase/vim-ansible-yaml'
Bundle 'pangloss/vim-javascript'
Bundle 'airblade/vim-gitgutter'
Bundle 'Syntastic'
Bundle 'matchit.zip'
"Bundle 'TaskList.vim'
Bundle 'ap/vim-css-color'
Bundle 'tpope/vim-fugitive'
Bundle 'Shougo/unite.vim'
Bundle 'scrooloose/nerdcommenter'
"Bundle 'm2mdas/phpcomplete-extended'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-surround'
" All of your Plugins must be added before the following line
call vundle#end()            " required
"
" ======================================
" THEME CONFIGURATIONS
" ======================================
colorscheme blackboard 
" set t_Co=256
" ======================================
" END THEME CONFIGRATIONS
" ======================================

set backupdir=~/.vim/backup_files//
set directory=~/.vim/swap_files//
set undodir=~/.vim/undo_files//

" TAB setting
set noexpandtab		"DO-NOT replace <TAB> with spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
autocmd FileType yaml set expandtab

" FOLDING
set foldenable
set foldmethod=marker
set foldlevel=0
set foldcolumn=0

" status line

set nu
set nocompatible              " be iMproved, required
" hi  Normal ctermbg=none
" set the runtime path to include Vundle and initialize
set hlsearch " higlight search result
" set tags+=tags,tags.vendors
" set t_Co=256
" let g:NERDTreeWinPos = "right"
" POWERLINE CONFIGS
 set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
"set runtimepath^=~/.vim/bundle/neobundle.vim/

set guifont=Liberation\ Mono\ for\ Powerline\ 10 

let g:airline_theme='papercolor'
let g:powerline_loaded = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" Don't show separators
let g:airline_left_sep=''
let g:airline_right_sep=''

"TAGLIST SETTINGS
let Tlist_Use_Right_Window = 1

"Always show statusline
set laststatus=2
"
" " Use 256 colours (Use this setting only if your terminal supports 256 colours)
" END POWERLINE

" =========================================================
" END SET CONFIGURATIONS
" ==========================================================

" MAPPING SHORTCUT KEY
" =======================================
"map <c-l> :tabn<cr>
"map <c-p> :tabp<cr>
nmap <F8> :TagbarToggle<CR>
nmap <F5> :NERDTreeToggle<CR>
"n 'beyondwords/vim-twig'
"map <c-n> :tabnew<cr>
"=========================================
" END MAPPING

" NERD TREE AUTO ACTIVE
autocmd vimenter * NERDTree
" Sudo command
cmap w!! w !sudo tee > /dev/null %<CR>
"To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" END VUNDLE
" ================================================================

" =====================
" NEOBUNDLE 
" =====================


"call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
" NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
"NeoBundle 'Shougo/vimproc.vim'


" call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
" NeoBundleCheck


" ======================
" END NEOBUNDLE
" ======================

" Autocomplete for php 
" autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP


" VIM PLUG 
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
"
" " Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" " Group dependencies, vim-snippets depends on ultisnips
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
" " On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
" " Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
" " Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
" " Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
" " Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'
"
" " Add plugins to &runtimepath
call plug#end()

filetype  plugin indent on             " required
 

" FUNCTIONS HERE
function! IPhpInsertUse()
	call PhpInsertUse()
	call feedkeys('a',  'n')
endfunction
"autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
"autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>



