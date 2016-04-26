"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Bundle 'CCTree'
"Bundle 'echofunc.vim'
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'rdnetto/YCM-Generator'
"Bundle 'Syntastic'
Bundle 'vim-scripts/taglist.vim'
"Bundle 'snipMate'
"Bundle 'SuperTab-continued.'
"Bundle 'snippets.vim'
"Bundle 'c.vim'
Bundle 'a.vim'
Bundle 'Colour-Sampler-Pack'
Bundle 'bufexplorer.zip'
Bundle 'The-NERD-tree'
Bundle 'YankRing.vim'
Bundle 'mbbill/fencview'
Bundle 'The-NERD-Commenter'
"Bundle 'fcitx.vim'
"Bundle 'davidhalter/jedi-vim'

filetype plugin indent on
let g:vundle_default_git_proto = 'http'

set guifont=Droid\ Sans\ Mono\ 11

colo desert

set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936

"高亮当前列
set cuc

"history文件中需要记录的行数
set history=100

"在处理未保存或只读文件的时候，弹出确认
set confirm

"设置hidden
set hidden

" 自动折叠
set foldmethod=indent

" 保存全局变量
set viminfo+=!

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-


" 语法高亮
syntax on

" 设置汇编为NASM语法
let asmsyntax="nasm"

"设置显示行号
set number

" 高亮字符，让其不受100列限制
":highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
":match OverLength '\%101v.*'

" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White

"更给力的BKSP
set backspace=indent,eol,start

"降低以下文件的tab补全优先级
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

"输入时隐藏鼠标
set mousehide

"设置leader键
let g:mapleader = ","

" 不要备份文件
"set nobackup

" 不要生成swap文件，当buffer被丢弃的时候隐藏它
"setlocal noswapfile
"set bufhidden=hide

" 字符间插入的像素行数目
set linespace=0

" 增强模式中的命令行自动完成操作
set wildmenu

" 在状态行上显示光标所在位置的行号和列号
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" 命令行（在状态行下）的高度
set cmdheight=1

" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" 启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI

" 不让vim发出滴滴声
set noerrorbells

" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

" 高亮显示匹配的括号
set showmatch

" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5

" 在搜索的时候忽略大小写
set ignorecase

" 不要高亮被搜索的句子（phrases）
set nohlsearch

" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch

" 输入:set list命令是应该显示些啥？
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<
set list

" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

" 不要闪烁
set novisualbell

" 状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" 总是显示状态行
set laststatus=2

" 自动格式化
set formatoptions=tcrqn

" 继承前一行的缩进方式，特别适用于多行注释
set autoindent

" 为C程序提供自动缩进
set smartindent

" 使用C样式的缩进
set cindent

" 制表符为4
set tabstop=4

" 统一缩进为4
set softtabstop=4
set shiftwidth=4

" 不要用空格代替制表符
autocmd FileType * set noexpandtab
autocmd FileType python set expandtab

"set noexpandtab

" 不要换行
"set nowrap

" 合适的地方换行
set linebreak

" 在行和段开始处使用制表符
set smarttab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags 的设定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"CTags
"按照名称排序
let Tlist_Sort_Type = "name"

"在右侧显示窗口
"let Tlist_Use_Right_Window = 1

"压缩方式
"let Tlist_Compart_Format = 1

"如果只有一个buffer，kill窗口也kill掉buffer
let Tlist_Exist_OnlyWindow = 0

"不要关闭其他文件的tags
let Tlist_File_Fold_Auto_Close = 0

"" 不要显示折叠树
"let Tlist_Enable_Fold_Column = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe 的设定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 不显示开启vim时检查ycm_extra_conf文件的信息
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '/home/arch/.vim/ycm_extra_conf.py'
let g:ycm_server_python_interpreter = '/usr/bin/python3'
" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 开启语义补全
let g:ycm_seed_identifiers_with_syntax=1	
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" 设置在下面几种格式的文件上屏蔽ycm
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'nerdtree' : 1,
      \}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <Leader>w :w!<CR>
nmap <Leader>q :q!<CR>
nmap <Leader>y :YRShow<CR>
nmap <Leader>f :FencView<CR>
nmap <Leader>tn :tabN<CR>
nmap <Leader>tp :tabp<CR>
nmap <Leader>a :A<CR>
nmap <Leader>t :!sdcv <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>m :Man 3 <cword><CR>

map <F4> :silent! BufExplorer<CR>
map <F3> :silent! Tlist<CR>
map <F2> :silent! NERDTreeToggle<CR>
