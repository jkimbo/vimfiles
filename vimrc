" File: vimrc
" Author: Jonathan Kim
" Description: My personal vim file
" Last Modified: September 20, 2011

""""""""""""""""""""""""""""""
" General settings
"""""""""""""""""""""""""

set nocompatible                    " not VI compatible
set vb t_vb=                        " disable bell
set history=500                     " lines of history to remember
set mouse=a                         " always enable mouse input

" Colour schemes {
    set background=dark
    "colorscheme darkspectrum
    colorscheme solarized           " prefered colour scheme
    "colorscheme mustang
    "colorscheme TjlH_col
    "colorscheme desert
    "colorscheme elflord
" }

set showmode                    " display the current mode
set hidden                      " hides buffers instead of closing them
set nobackup                    " no backup
set noswapfile                  " no swapfile
set pastetoggle=<F3>            " disables smart indenting when pasting from outside the terminal
set undofile

" Setup Bundle Support {
" The next two lines ensure that the ~/.vim/bundle/ system works
    filetype off
    runtime! autoload/pathogen.vim
    silent! call pathogen#helptags()
    silent! call pathogen#runtime_append_all_bundles()
" }

" Setup temp directory
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

au BufWinLeave * silent! mkview     "make vim save view (state) (folds, cursor, etc)
au BufWinEnter * silent! loadview   "make vim load view (state) (folds, cursor, etc)
au FocusLost * :wa                  "autosave files on loosing focus

""""""""""""""""""""""""""""""
" File Formats
"""""""""""""""""""""""""

set fileformats=unix                                        " always use Unix file format

au BufRead,BufNewFile *.txt setfiletype text
au BufRead,BufNewFile *.csv,*.tsv setfiletype csv           " allow for ?sv file editing
au BufRead,BufNewFile *.prb setfiletype tex
au BufRead,BufNewFile */AI/*/*.pl setlocal filetype=prolog
au BufNewFile,BufRead *.less set filetype=less              " less syntax
au BufNewFile,BufRead *.tpl set filetype=smarty.html        " smarty syntax
au BufNewFile,BufRead *.coffee set filetype=coffee          " coffee syntax

let g:tex_flavor='latex'                                    " use latex styles

""""""""""""""""""""""""""""""
" Style and Syntax
"""""""""""""""""""""""""

filetype plugin indent on                                   " enable file type check and indent
syntax on                                                   " enable syntax highlighting
au BufRead,BufNewFile *.tsv silent! Delimiter \t            " set the tsv delimiter to a TAB
set t_Co=256
let g:solarized_termcolors=256

set nu                                                      " set numbering rows
au StdinReadPost * setlocal nonu                            " but not in man

if has('statusline')
    set laststatus=2

    " Broken down into easily includeable segments
    set statusline=%<%f\    " Filename
    set statusline+=%w%h%m%r " Options
    set statusline+=%{fugitive#statusline()} "  Git Hotness
    set statusline+=\ [%{&ff}/%Y]            " filetype
    set statusline+=\ [%{getcwd()}]          " current dir
    "set statusline+=\ [A=\%03.3b/H=\%02.2B] " ASCII / Hexadecimal value of char
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

set tabstop=4                                               " spaces per tab
set softtabstop=4
set shiftwidth=4                                            " spaces per indent
set expandtab                                               " expand tabs to spaces
set smarttab                                                " at start shiftwidth, else tabstop
set autoindent                                              " indent new line to same as previous
set smartindent                                             " indent on code type
set nolist                                                  " disable list on most files
set foldenable  				" auto fold code
set gdefault

""" control wrapping
"set linebreak                                               " wraps without <eol>
"au Filetype text setlocal textwidth=0                       " overide system vimrc
"au Filetype python setlocal textwidth=78
"au Filetype html,tex,text setlocal wrapmargin=2
"au Filetype html,tex,text setlocal formatoptions+=wa
au Filetype python setlocal formatoptions+=wa2
au Filetype python,coffee setlocal expandtab                " expand tabs to spaces
au Filetype python,coffee setlocal list                     " show tabs and trailing spaces
au Filetype python,coffee setlocal lcs=tab:├─               " Tabs are shown as ├──├──
au Filetype python,coffee setlocal lcs+=trail:␣             " Show trailing spaces as ␣
let coffee_folding = 1

" Remove trailing whitespaces and ^M chars
autocmd FileType c,cpp,java,php,js,python,twig,xml,yml,html autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

""""""""""""""""""""""""""""""
" VIM UI
"""""""""""""""""""""""""

set ruler                                                   " always display cursor position
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
set backspace=indent,eol,start                              " backspace for dummys

set incsearch                                               " search as type
set hlsearch                                                " highlight search terms
set ignorecase smartcase                                    " ignore case except explicit UC

set scrolloff=4                                             " keep cursor 5 lines from edge
set sidescrolloff=10

set wildmode=list:longest,full                              " command <Tab> completion, list matches, then longest common part, then all.

set tabpagemax=40                                           " max number opening tabs = ?
set showtabline=1                                           " standard tabbed viewing

set viminfo='100                                            " save marks and jumps in viminfo

set whichwrap=b,s,>,<                                       " which movement chars move lines

set wmh=0                                                   " window minimum height is 0

""" map <Space> to :noh and clear messages
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

""" Folding
set foldcolumn=1                                            " set width of folding column (appears on left side of ruler)

au Filetype c,cpp,less,coffee,html,js,php,python,sh,verilog,vhdl,xml setlocal foldcolumn=2
au Filetype prolog setlocal foldcolumn=3
au Filetype c,cpp,css,html,js,coffee,php,prolog,python,sh,verilog,vhdl,xml setlocal foldmethod=indent
au Filetype c,cpp,css,html,js,coffee,php,prolog,python,sh,verilog,vhdl,xml setlocal foldlevel=0
au Filetype c,cpp,css,html,js,coffee,php,prolog,python,sh,verilog,vhdl,xml setlocal foldlevelstart=2
au Filetype c,cpp,css,html,js,coffee,php,prolog,python,sh,verilog,vhdl,xml setlocal foldminlines=1
au Filetype c,cpp,css,html,js,coffee,php,prolog,python,sh,verilog,vhdl,xml setlocal foldnestmax=10
au Filetype c,cpp,js,coffee setlocal foldignore="#"
au Filetype php,css,html,less,coffee setlocal nowrap
"au Filetype python,sh,js,css,html,xml,php,vhdl,verilog set foldignore="#"

" Key (re)Mappings {

    "The default leader is '\', but many people prefer ',' as it's in a standard location
    let mapleader = ','
    let g:mapleader = ","
    let maplocalleader = "\\"

    """ Smart way to move windows
    map <C-j> <C-W>j
    map <C-k> <C-W>k
    "map <C-j> <C-W>j<C-W>_                                 " maximise windows when moving between them
    "map <C-k> <C-W>k<C-W>_
    map <C-h> <C-W>h
    map <C-l> <C-W>l
    map gw <C-W>
    map gW <C-W>
    nnoremap <leader>w <C-w>v<C-w>l                        " open new window in vertical split

    " Window resizing with arrow keys
    nmap <C-Down> <C-W>-<C-W>-
    nmap <C-Up> <C-W>+<C-W>+
    nmap <C-right> <C-W>><C-W>>
    nmap <C-left> <C-W><<C-W><

    " Wrapped lines goes down/up to next row, rather than next line in file.
    nnoremap j gj
    nnoremap k gk

    " Stupid shift key fixes
    cmap W w
    cmap WQ wq
    cmap wQ wq
    cmap Q q
    cmap Tabe tabe

    " Yank from the cursor to the end of the line, to be consistent with C and D.
    nnoremap Y y$

	""" Code folding options
	nmap <leader>f0 :set foldlevel=0<CR>
	nmap <leader>f1 :set foldlevel=1<CR>
	nmap <leader>f2 :set foldlevel=2<CR>
	nmap <leader>f3 :set foldlevel=3<CR>
	nmap <leader>f4 :set foldlevel=4<CR>
	nmap <leader>f5 :set foldlevel=5<CR>
	nmap <leader>f6 :set foldlevel=6<CR>
	nmap <leader>f7 :set foldlevel=7<CR>
	nmap <leader>f8 :set foldlevel=8<CR>
	nmap <leader>f9 :set foldlevel=9<CR>

    inoremap () ()<Left>
    inoremap [] []<Left>
    inoremap '' ''<Left>
    inoremap "" ""<Left>

    " Shortcuts
    " Change Working Directory to that of the current file
    cmap cwd lcd %:p:h
    cmap cd. lcd %:p:h

    " visual shifting (does not exit Visual mode)
    vnoremap < <gv
    vnoremap > >gv

    " For when you forget to sudo.. Really Write the file.
    cmap w!! w !sudo tee % >/dev/null

    " ,l redraws the screen and removes any search highlighting.
    nnoremap <leader>l :nohl<CR>

    " Indent with spacebar
    "noremap <tab> >>
    nnoremap <tab> %
    vnoremap <tab> %
    " Move easily between ^ and $
    "noremap <C-h> ^
    "noremap <C-l> $

    " exhuma's .vimrc - https://github.com/exhuma/vimfiles/blob/master/.vimrc
    " {
        " Switch to previous/next buffer
        nmap <kMinus>  :bprevious<CR>
        nmap <kPlus>   :bnext<CR>
    "}

    " auto reload vimrc
    "autocmd BufWritePost vimrc !source ~/vim/vimrc

    " Allows you to edit files that are not in sudo by using w!!
    cmap w!! w !sudo tee % >/dev/null

    " quick edit vimrc
    nmap <leader>v :e ~/vim/vimrc<CR>

    inoremap <F1> <ESC>
    nnoremap <F1> <ESC>
    vnoremap <F1> <ESC>

    nnoremap ; :

    " Strip all trailing whitespaces in a file
    nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

    " Calculator mapping
    inoremap <C-A> <C-O>yiW<End>=<C-R>=<C-R>0<CR>

""""""""""""""""""""""""""""""
" Spelling
"""""""""""""""""""""""""

" set spell                     " enable spell check
" au BufRead *.use,*.conf,*.cfg,*/conf.d/*,*.log,.vimrc set nospell

au Filetype c,css,html,javascript,php,tex,text,mkd setlocal spell
au Filetype help setlocal nospell
au StdinReadPost * setlocal nospell         " but not in man

set spelllang=en_gb                 " spell check language to GB

" set dictionary+=/usr/share/dict/words         " add standard words

""""""""""""""""""""""""""""""
" Completion
"""""""""""""""""""""""""

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=longest,menuone,menu,preview

set complete=.,k,w,b,u,t,i              " add dictionary completion

set omnifunc=syntaxcomplete#Complete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType less set omnifunc=csscomplete#CompleteCSS
"autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType coffee set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
runtime ftplugin/man.vim                " Man page plugin
runtime ftplugin/pdf.vim                " PDF plugin

""" ctags config
"au BufWritePost c,cpp,*.h !ctags -R --c++-kinds=+p --fields=+iaS --extra=+q
"noremap mtl :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"setlocal tags=tags,.tags,./tags;/,~/.vim/tags
"au Filetype cpp set tags+=~/.vim/tags/cpp
"au BufRead,BufNew */msp430/*/*.c setlocal tags+=~/.vim/tags/msp430
"au BufRead,BufNew */avr/*/*/*/*.c setlocal tags+=~/.vim/tags/avr
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/sdl
"au Filetype cpp set tags+=~/.vim/tags/qt4
"set tags+=~/.vim/tags/gtk-2

""""""""""""""""""""""""""""""
" Plugin configuration
"""""""""""""""""""""""""

""" TagList
noremap <silent> mtt :TlistToggle<CR>
let Tlist_Use_Right_Window = 1

""" Pydiction
let g:pydiction_location = '~/.vim/after/pydiction/complete-dict'

" Supertab {
    let g:SuperTabDefaultCompletionType = "context"
    let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
    "let g:SuperTabMidWordCompletion = 1
    "let g:SuperTabCrMapping = 1
    "let g:SuperTabLongestHighlight = 0
" }

" OmniComplete {
    " and make sure that it doesn't break supertab
    let g:SuperTabCrMapping = 0

    " automatically open and close the popup menu / preview window
    au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
    set completeopt=menu,preview,longest
" }

""" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1                             " show function parameters
let OmniCpp_MayCompleteDot = 1                                  " autocomplete after .
let OmniCpp_MayCompleteArrow = 1                                " autocomplete after ->
let OmniCpp_MayCompleteScope = 1                                " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

""" Maps auto-completion to <Tab>, else inputs Tab.
function! SuperCleverTab()
    if strpart(getline("."), 0, col(".")-1) =~ '^\s*$\|^.*\s$\|^.*[,;)}\]]$'
        return "\<Tab>"
    else
        if &omnifunc != ''
            return "\<C-X>\<C-O>"
        else
            return "\<C-N>"
        endir
    endif
endfunction

inoremap <Tab> <C-R>=SuperCleverTab()<cr>

" NerdTree {
    map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
    map <leader>e :NERDTreeFind<CR>
    nmap <leader>nt :NERDTreeFind<CR>

    let NERDTreeShowBookmarks=1
    let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
    "let NERDTreeChDirMode=0
    "let NERDTreeQuitOnOpen=1
    let NERDTreeShowHidden=1
    let NERDTreeKeepTreeInNewTab=1
    let NERDTreeWinSize=20
    " autocmd VimEnter * NERDTree
    " autocmd BufEnter * NERDTreeMirror
" }

" Gundo {
    nnoremap <F5> :GundoToggle<CR>
    let g:gundo_right = 1
"}
"
" Ctags {
    " This will look in the current directory for 'tags', and work up the tree towards root until one is found.
        set tags=./tags;/,$HOME/vimtags
        map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR> " C-\ - Open the definition in a new tab
        map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>      " A-] - Open the definition in a vertical split
" }

" Session {
    :let g:session_autoload = 'no'
    :let g:session_autosave = 'no'
" }

" MiniBufExplorer {
    let g:miniBufExplMapCTabSwitchBufs = 1
    let g:miniBufExplUseSingleClick = 1
" }

" Yankring {
    nnoremap <silent> <F6> :YRRefresh<CR>:YRShow<CR>
"}

" Sparkup {
    let g:sparkupExecuteMapping = '<c-z>'
" }

" Tcomment {

" }

" Vimwiki {
    let g:vimwiki_list = [{'path': '~/Dropbox/Wiki/'}]
" }

" Ack {
    let g:ackprg="ack-grep -H --nocolor --nogroup --column"
    nnoremap <leader>a :Ack 
" }

" Fugitive {
    nnoremap <leader>gs :Gstatus<CR>
    nnoremap <leader>gc :Gcommit<CR>
" }

""""""""""""""""""""""""""""""
" Printing
"""""""""""""""""""""""""

set printoptions=left:4pc,right:4pc,top:5pc,bottom:5pc
set printfont=:h9
