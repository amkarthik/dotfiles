set nocompatible              " be iMproved, required
"filetype off                  " required

"========================================================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"git plugins
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'airblade/vim-gitgutter'
Plugin 'jreybert/vimagit'

"colors
Plugin 'sheerun/vim-polyglot'
Plugin 'joshdick/onedark.vim'


" Plugin 'kien/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'powerline/powerline'
Plugin 'majutsushi/tagbar'

" Plugin 'ludovicchabant/vim-gutentags'
Plugin 'mileszs/ack.vim'
"Plugin 'othree/xml.vim'
"Plugin 'avakhov/vim-yaml'
"Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-commentary'
"Plugin 'easymotion/vim-easymotion'
"Plugin 'sjl/gundo.vim'
"Plugin 'tpope/vim-surround'
Plugin 'groenewege/vim-less'
" Plugin 'prettier/vim-prettier'

"Google plugins
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
Plugin 'google/vim-searchindex'

"scratchpad
" Plugin 'Konfekt/vim-scratchpad'

" fzf
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'

Plugin 'chrisbra/csv.vim'
Plugin 'nathanaelkane/vim-indent-guides'

"nert tree
"Plugin 'scrooloose/nerdtree'
"Plugin 'Xuyuanp/nerdtree-git-plugin'

"whitespace
Plugin 'ntpeters/vim-better-whitespace'

" markdown
Plugin 'tpope/vim-markdown'

" gui related
Plugin 'junegunn/limelight.vim'

"async run
Plugin 'skywind3000/asyncrun.vim'
Plugin 'vim-scripts/SQLUtilities'
" Plugin 'vim-scripts/Align.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
call glaive#Install()
"========================================================================
" To detect filetype, indent, plugin
"filetype plugin on
set nocp
filetype plugin indent on    " required

"my customizations

"syntax and indentation related
syntax on "For syntax hilight
set autoindent " copy indent from the current line to new line
set sw=4
set tabstop=4
set softtabstop=4
set smartindent " automatically insert one extra level indentation in some cases.
set expandtab
set smarttab
" set textwidth=79

"file manipulation line save close etx
set autowrite "write the file when closing it auto save
set autoread

set incsearch
set hlsearch

"command line
set history=200
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

"====================================================================================================
"Edition customizations

"power line for vim and bash shell
"https://www.tecmint.com/powerline-adds-powerful-statuslines-and-prompts-to-vim-and-bash/
"reffer this link to install it in another system
set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

"ruler
set ruler
"
"status line filename
set laststatus=2
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]

"line number and relative line number
set number
set relativenumber

"color scheme related
set t_Co=256
let g:onedark_termcolors=256
set background=light
colorscheme onedark

"Common conf
set undodir=~/.vim/undodir "set undo dir
set shell=/bin/bash "set normal bash as shell for vim


"tab splitting options
set splitbelow splitright
"
"Netrw conf
let g:netrw_list_hide='.*\.swp$,.*\.pyc,.*\.svn,.*\.git,.*\.ctrlp,.*\.env,.*\.github,.*\.settings,.*\.project,.*\.pydevproject,.*\.tx$,.*\.mail,.*\.venv,Pipfile*,__pycache__,.*\.autoenv,\.vscode'
"'\v\.(swp|pyc|env|ctrlp|project|pydevproject|*)$'
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

let g:netrw_banner = 0

let g:netrw_altv          = 1
let g:netrw_fastbrowse    = 2
let g:netrw_keepdir       = 0
" let g:netrw_liststyle     = 2
let g:netrw_retmap        = 1
let g:netrw_silent        = 1
let g:netrw_special_syntax= 1

let g:netrw_preview=1
" let g:netrw_liststyle = 3
" let g:netrw_winsize   = 85
let g:netrw_keepdir = 1

"
"for matchit
runtime macros/matchit.vim "to run matchit for matching angle brackets

"For ctrlP
let g:ctrlp_root_markers = ['.ctrlp']
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/](doc|tmp|node_modules)',
            \ 'file': '\v\.(exe|so|dll|pyc)$',
            \ }

let g:csv_delim=','
let g:csv_nl = 1
let g:csv_str = {'deleim':""}

"=======================================================================================================
"mappings

"make kj as Esc and disable Esc
inoremap kj <Esc>
inoremap <Esc> <NOP>

"split line
map K i<Enter>kj

"auto format options for py files
let g:formatdef_autopep8 = "'autopep8 -a -a -i'"
let g:formatters_python = ['autopep8']

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"ctrl-p mappings


"autoread
":map <F7> :checktime<CR>
":map! <F7> <C-O>:checktime<CR>

"gundo
"let g:gundo_prefer_python3 = 1
"let g:gundo_right = 1
"nnoremap <C-F7> :GundoToggle<CR>

"tagbar
let g:tagbar_ctags_bin = '/opt/ctags-installed/bin/ctags'
let g:tagbar_left=1
let g:tagbar_show_linenumbers = -1


" function VertProjectFiles()
"     :Vex
"     :ProjectFiles
" endfunction


"indent guidelines
let g:indent_guides_guide_size = 1
"=======================================================================================================

"leader and its mapping

let mapleader=" "
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>wq :wq<cr>
nnoremap <leader>q :q<cr>
"move split window
" nnoremap <leader>l <C-W>L
" nnoremap <leader>h <C-W>H
" nnoremap <leader>k <C-W>K
" nnoremap <leader>j <C-W>J
nnoremap <leader>t :term ++rows=10<cr>

"window resizing mapping
nnoremap <leader>e <C-W>=
nnoremap <leader>\ <C-W>\|
nnoremap <leader>\\ <C-W>_

"hlhide
nnoremap <C-n> :nohlsearch<CR>

"This open's the MRU
" noremap <leader>r :CtrlPBuffer<CR>
noremap <leader>r :Buffers<CR>
"=======================================================================================================
"
"disable bracketed paste
set t_BE=

"=========================================================================================================
"
"My abb
"cab jodp /opt/odoo/10.0-JOD/**/*.py
"cab jodx /opt/odoo/10.0-JOD/**/*.xml

"==========================================================================================================
"local leader
let maplocalleader = "\\"

" auto cmd group
augroup file_type
    autocmd!
    autocmd FileType netrw :set relativenumber
    autocmd FileType nerdtree setlocal relativenumber
    autocmd FileType rst :set nofoldenable
    " autocmd FileType tagbar :set relativenumber
augroup END
"===========================================================================================================
"Nerdcommenter
" Add spaces after comment delimiters by default
"let g:NERDSpaceDelims = 1
"
" " Use compact syntax for prettified multi-line comments
"let g:NERDCompactSexyComs = 1
"
" " Align line-wise comment delimiters flush left instead of following code
" indentation
"let g:NERDDefaultAlign = 'left'
"
" " Set a language to use its alternate delimiters by default
"let g:NERDAltDelims_java = 1
"
" " Add your own custom formats or override the defaults
"let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
"
" " Allow commenting and inverting empty lines (useful when commenting a
" region)
"let g:NERDCommentEmptyLines = 1
"
" " Enable trimming of trailing whitespace when uncommenting
"let g:NERDTrimTrailingWhitespace = 1

"editor config
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:EditorConfig_max_line_indicator="line"

"prettier
" let g:prettier#exec_cmd_path = '/usr/local/bin/prettier'
" let g:prettier#autoformat = 0
" let g:prettier#config#tab_width = 4
" autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

"=======================================================


"==========================================
" my custom vim functions

function! s:find_customer_path()
    let l:command = 'cust-path -p ' . expand("%")
    return system(command)[:-2]
endfunction

function! s:find_modules_path()
    let l:command = 'cust-path -m -p ' . expand("%")
    return system(command)[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_customer_path()
command! ModuleFiles execute 'Files' s:find_modules_path()

function! s:find_customer_path_new()
    let l:command = 'cust-path-new -p ' . expand("%")
    return system(command)[:-2]
endfunction

function! s:find_modules_path_new()
    let l:command = 'cust-path-new -m -p ' . expand("%")
    return system(command)[:-2]
endfunction

command! ProjectFilesNew execute 'Files' s:find_customer_path_new()
command! ModuleFilesNew execute 'Files' s:find_modules_path_new()

" set tags
"
" set tags=s:find_customer_path()
" let &tags=s:find_customer_path()
" set tags=/opt/odoo/12.0-LS/src
" execute 'set tags='.escape(s:find_customer_path(), '\ ')


"fzf mappings

"=====================
"
"nerdtree conf

"mymappings
nnoremap <silent> <F3> :FormatCode<CR>
nnoremap <silent> <F4> :Autoformat<CR>
nnoremap <silent> <F5> :Ex<CR>
nnoremap <silent> <C-F5> :Vex<CR>
nnoremap <silent> <F7> :IndentGuidesToggle<CR>
nnoremap <silent> <C-F7> :ToggleWhitespace<CR>
nnoremap <silent> <F8> :TagbarToggle<CR>
nnoremap <silent> <C-F8> :AsyncRun octodown --style atom %<CR>

nnoremap <silent> <F6> :ModuleFiles<CR>
nnoremap <silent> <C-F6> :ProjectFiles<CR>
nnoremap <silent> <F12> :ModuleFilesNew<CR>
nnoremap <silent> <S-F12> :ProjectFilesNew<CR>


"polyglot
let g:polyglot_disabled = ['graphql']

"
"python with virtualenv support

" py3 << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
"     project_base_dir = os.environ['VIRTUAL_ENV']
"     activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"     exec(open(activate_this).read(), dict(__file__=activate_this))
"     EOF


"testing system clipboard"
"markdown

let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'xml', 'js', 'scss', 'css', 'less']
let g:markdown_minlines = 100
" autocmd FileType markdown :AsyncRun octodown %

" Lime line config
"
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

let g:ackprg = 'ag --nogroup --nocolor --column'
" let g:ackprg = 'ag --vimgrep'
"
"
" customizations for fzf.vim :Ag

" augroup agpython
" augroup END
autocmd! VimEnter * command! -nargs=* -complete=file Ag :call fzf#vim#ag_raw(<q-args> .' '.s:find_customer_path())

command! -bang -nargs=* Agp call fzf#vim#ag('--python', <q-args> ,<bang>0)
command! -bang -nargs=* Agx call fzf#vim#ag('--xml', <q-args> ,<bang>0)
" command! -bang -nargs=* Agp call fzf#vim#ag('--python', <q-args>, <bang>0)
" command! -bang -nargs=* Agx call fzf#vim#ag('--xml', <q-args>, <bang>0)
command! -bang -nargs=* Ags call fzf#vim#ag(<q-args>,'--css --sass --less',<bang>0)
command! -bang -nargs=* Agj call fzf#vim#ag(<q-args>,'--js',<bang>0)

cmap w!! w !sudo tee > /dev/null %

function! s:list_buffers()
    redir => list
    silent ls
    redir END
    return split(list, "\n")
endfunction

function! s:delete_buffers(lines)
    execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction

command! BD call fzf#run(fzf#wrap({
            \ 'source': s:list_buffers(),
            \ 'sink*': { lines -> s:delete_buffers(lines) },
            \ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
            \ }))

function! GetJumps()
  redir => cout
  silent jumps
  redir END
  return reverse(split(cout, "\n")[1:])
endfunction
function! GoToJump(jump)
    let jumpnumber = split(a:jump, '\s\+')[0]
    execute "normal " . jumpnumber . "\<c-o>"
endfunction
command! Jumps call fzf#run(fzf#wrap({
        \ 'source': GetJumps(),
        \ 'sink': function('GoToJump')}))

"
"set verbosefile=~/.log/vim/verbose.log
"set verbose=15

" https://stackoverflow.com/questions/62148994/strange-character-since-last-update-42m-in-vim
let &t_TI = ""
let &t_TE = ""

set cursorline
"let g:EditorConfig_core_mode = 'external_command'
"let g:EditorConfig_exec_path = '/usr/bin/editorconfig-0.12.1'
"
"Customer template functions

function HeaderXml()
    :0read /home/harmony/.vim/templates/xml_headers.txt
endfunction

function Headerpy()
    :0read /home/harmony/.vim/templates/py_headers.txt
endfunction
