"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible

if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'vim-scripts/l9'
"Plug 'othree/vim-autocomplpop'
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator'
Plug 'vim-scripts/taglist.vim'
Plug 'emnkcn/a.vim'
Plug 'vim-scripts/Colour-Sampler-Pack'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'vim-scripts/The-NERD-tree'
Plug 'vim-scripts/YankRing.vim'
Plug 'mbbill/fencview'
Plug 'vim-scripts/The-NERD-Commenter'
Plug 'asins/vimcdoc'
"Plug 'chusiang/vim-sdcv'
"Plug 'fcitx.vim'
Plug 'bazelbuild/vim-ft-bzl'
" Signify (or just Sy) uses the sign column to indicate added, modified and
" removed lines in a file that is managed by a version control system (VCS).
Plug 'mhinz/vim-signify'
" Gutentags is a plugin that takes care of the much needed management of tags
" files in Vim.
Plug 'ludovicchabant/vim-gutentags'
" ALE (Asynchronous Lint Engine) is a plugin for providing linting in
" Vim 8 while you edit your text files, and acts as a Vim Language
" Server Protocol client.
"Plug 'w0rp/ale'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'Yggdroot/LeaderF', { 'do': '.\install.bat' }
Plug 'shirk/vim-gas'
" Run your favorite search tool from Vim, with an enhanced results list.
Plug 'mileszs/ack.vim'
" Indent Guides is a plugin for visually displaying indent levels in Vim.
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ekalinin/Dockerfile.vim'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=Droid\ Sans\ Mono\ 11

colo desert

set fenc=utf-8
set fencs=utf-8,euc-cn,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936

"启用OmniCompletion
"set omnifunc=syntaxcomplete#Complete

"高亮当前列
"set cuc

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y

" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p

" 让配置变更立即生效
"autocmd BufWritePost $MYVIMRC source $MYVIMRC

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
set iskeyword+=_,$,@,%,#

" 高亮搜索词
set hlsearch

" 语法高亮
syntax on

" 设置汇编为NASM语法
let asmsyntax="gas"

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
"set mouse=a
"set selection=exclusive
"set selectmode=mouse,key

" 鼠标选择复制（securecrt）
set mouse=v

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

" 空格代替制表符
autocmd FileType * set noexpandtab
autocmd BufNewFile,BufRead *.proto setfiletype proto
autocmd FileType proto set expandtab
autocmd BufNewFile,BufRead BUILD_OF_BLADE setfiletype blade
autocmd FileType blade set expandtab
autocmd FileType bzl set expandtab
autocmd FileType python set expandtab
autocmd FileType cpp set expandtab
autocmd FileType c set expandtab
autocmd FileType javascript set expandtab

" 不要换行
"set nowrap

" 合适的地方换行
set linebreak

" 在行和段开始处使用制表符
set smarttab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags 的设定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tags=./.tags;,.tags

" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project', 'BLADE_ROOT']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+plx']
let g:gutentags_ctags_extra_args += ['--c-kinds=+plx']

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
"let g:ycm_global_ycm_extra_conf = '$HOME/.vim/ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
let g:ycm_server_python_interpreter = '/usr/bin/python3'
" 禁止缓存匹配项,每次都重新生成匹配项
"let g:ycm_cache_omnifunc=0
" 将语言关键词加入符号补全数据库
"let g:ycm_seed_identifiers_with_syntax=1
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" 设置在下面几种格式的文件上屏蔽ycm
let g:ycm_filetype_blacklist = {
	  \ 'tagbar' : 1,
	  \ 'nerdtree' : 1,
	  \}
" 触发语义补全
let g:ycm_key_invoke_completion = '<c-n>'
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" 文件类型白名单
"let g:ycm_filetype_whitelist = {
"\ "c":1,
"\ "cpp":1,
"\ "sh":1,
"\ "zsh":1,
"\ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <Leader>w :w!<CR>
nmap <Leader>q :q!<CR>
nmap <Leader>y :YRShow<CR>
nmap <Leader>tn :tabN<CR>
nmap <Leader>tp :tabp<CR>
nmap <Leader>a :A<CR>
nmap <Leader>t :!sdcv <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>m :!man 3 <cword><CR>
nmap <Leader>j :%!python -m json.tool<CR>
nmap <Leader>g :LeaderfFunctionAll<CR>

map <F2> :silent! NERDTreeToggle<CR>
map <F3> :silent! Tlist<CR>
map <F4> :silent! BufExplorer<CR>
map <F5> :FencView<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" a.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:alternatePreferCPP = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ale
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
\   'c++': ['clangtidy'],
\   'c': ['cquery'],
\   'python': ['pylint'],
\}
let g:ale_fixers = {
\   'javascript': [
\       'DoSomething',
\       'eslint',
\       {buffer, lines -> filter(lines, 'v:val !=~ ''^\s*//''')},
\   ],
\}

autocmd FileType python noremap <buffer> <F7> :ALEFix<CR>
let g:ale_fixers = {
\ 'python': ['add_blank_lines_for_python_control_statements','autopep8','isort','yapf','remove_trailing_lines','trim_whitespace'],
\}

let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++11'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-cpp-enhanced-highlight
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LeaderF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
"let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 1
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ack
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
nmap <Leader>k :Ack! 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_enable_on_vim_startup = 1
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
