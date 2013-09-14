" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on


" 常规设置
set nu
set showmatch " 代码匹配
set laststatus=2 " 总是显示状态行
set expandtab  " 以下三个配合使用,设置tab和缩进空格数
set shiftwidth=4
set tabstop=4
set cursorline "为光标所在行设置下划线
set autoread "文件在其他地方编辑过自动载入
set ignorecase "检索时忽略大小写
set fileencodings=utf-8,gbk "使用utf-8或者gbk打开文件
set hls " 检索时高亮匹配项 
set helplang=cn " 设置帮助文档为中文
set foldmethod=syntax  " 代码折叠
set nobackup   " 以下两行禁止生成缓存文件和备份文件
set nowritebackup

" 插件相关设置  
" powerline
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'

" pathogen是vim插件管理的插件
let g:pymode_lint_write = 0 " disable pylint checking every save
let g:pymode_run_key = 'R' " set key 'R' for run python code

" NERDTree
autocmd VimEnter * NERDTree   " 打开vim时自动打开NERDTree
"let NERDTreeShowBookmarks=1   " 当打开 NERDTree 窗口时，自动显示 Bookmarks
" 设置Control+L为打开/关闭NERDTree的快捷键
nmap <silent> <C-L> :NERDTreeToggle<CR> 
autocmd VimEnter * wincmd p   " 打开NERDTree时光标停在编辑界面
