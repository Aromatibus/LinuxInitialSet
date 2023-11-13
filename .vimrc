" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd

" 見た目系
" 編集中ファイル名の表示
set title
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
" set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" 行頭、行末で行のカーソル移動を可能にする
set whichwrap=b,s,h,l,<,>,[,],~
" バックスペースでの行移動を可能にする
set backspace=indent,eol,start
" 自動インデント
set autoindent
" インデントはスマートインデント
set smartindent
" ビープ音を停止と可視化
set belloff=all
set visualbell t_vb=
" 括弧入力時の対応する括弧を表示
set showmatch
" ○や□などの文字が重ならないようにする
set ambiwidth=double 
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" シンタックスハイライトの有効化
syntax enable
" 不可視文字の指定
set listchars=tab:\▸\-,eol:↲,extends:❯,precedes:❮

" Tab系
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2

" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" インクリメンタルサーチを有効にする
set incsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" カラースキームの設定
set background=dark
"set background=light
autocmd ColorScheme * highlight Normal ctermbg=0 ctermfg=7
colorscheme kalisi

" ===== モードによってカーソルを変更 =====
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

