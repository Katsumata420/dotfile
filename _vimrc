syntax on
set number
set showmatch
set autoindent
set hlsearch
set tabstop=4
set expandtab
set shiftwidth=4
set mouse=a
set laststatus=4
set textwidth=0
set cursorline
set title
set smartindent
"set wrap
"normalだったり行頭、行末
inoremap jj <Esc>
inoremap <C-e> <Esc>$i
inoremap <C-a> <Esc>^a
"検索が真ん中に来る
nnoremap n nzz
nnoremap N Nzz
" window関連
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <S-Left>  <C-w><<CR>
nnoremap <S-Right> <C-w>><CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>
set encoding=utf-8
set clipboard+=autoselect
set clipboard+=unnamed
"columnのハイライトを出したり消したり
nnoremap <C-o> : <C-u>setlocal cursorcolumn!<CR>
"set list

"プラグイン用
if has('vim_starting')
   "初回起動時のみruntimepathにneobundleのパスを指定する
   "set runtimepath+=~/.vim/bundle/neobundle.vim/
   set runtimepath+=~/dotfile/vimfiles/neobundle.git/neobundle.vim/
endif

"NeoBundleを初期化
"call neobundle#begin(expand('~/.vim/bundle/'))
call neobundle#begin(expand('~/dotfile/vimfiles/neobundle.git/'))

" インストールするプラグインをここに記述
NeoBundle 'Shougo/unite.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/neocomplete.vim'

call neobundle#end()

"ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on

"tree
nnoremap :tree :NERDTreeToggle
