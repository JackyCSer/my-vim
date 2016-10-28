set sw=4
set ts=4
set et
set smarttab
set smartindent
set lbr
set fo+=mB
set sm
set selection=inclusive
set wildmenu
set mousemodel=popup

au FileType php setlocal dict+=~/.vim/dict/php_funclist.dict
au FileType css setlocal dict+=~/.vim/dict/css.dict
au FileType c setlocal dict+=~/.vim/dict/c.dict
au FileType cpp setlocal dict+=~/.vim/dict/cpp.dict
au FileType scale setlocal dict+=~/.vim/dict/scale.dict
au FileType javascript setlocal dict+=~/.vim/dict/javascript.dict
au FileType html setlocal dict+=~/.vim/dict/javascript.dict
au FileType html setlocal dict+=~/.vim/dict/css.dict

"syntastic相关
"execute pathogen#infect()
"let g:syntastic_python_checkers=['pylint']
"let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
""golang
"Processing... % (ctrl+c to stop)
"let g:fencview_autodetect=0
"set rtp+=$GOROOT/misc/vim
"
"" 显示相关
syntax on
set cul "高亮光标所在行
set cuc
"color desert     " 设置背景主题 
color ron     " 设置背景主题  
""color torte     " 设置背景主题  
autocmd InsertEnter * se cul    " 用浅色高亮当前行
set ruler           " 显示标尺
set showcmd         " 输入的命令显示出来，看的清楚些
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容
set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)
set foldenable      " 允许折叠
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set backspace=indent,eol,start
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set number
set history=1000
set hlsearch
set incsearch
set langmenu=zh_CN.UTF-8
set helplang=cn
set cmdheight=2
filetype on
filetype plugin on

set viminfo+=!
set iskeyword+=_,$,@,%,#,-

au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd
au BufRead,BufNewFile *.{go}   set filetype=go
au BufRead,BufNewFile *.{js}   set filetype=javascript

nmap md :!~/.vim/markdown.pl % > %.html <CR><CR>
nmap fi :!firefox %.html & <CR><CR>
nmap \ \cc
vmap \ \cc

nmap tt :%s/\t/    /g<CR>
