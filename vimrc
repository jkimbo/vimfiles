""""""""""""""""""""""""""""""
" General settings
"""""""""""""""""""""""""

set nocompatible                    " not VI compatible
set vb t_vb=                        " disable bell
set listchars=trail:-,nbsp:%        " characters to display specials
set history=500                     " lines of history to remember
set mouse=a                         " always enable mouse input

map! ii <Esc>

" Colour schemes {
    set background=light
    colorscheme solarized
    "colorscheme TjlH_col
    "colorscheme desert
    "colorscheme elflord
" }

set showmode                    " display the current mode
set hidden                      " hides buffers instead of closing them
set nobackup                    " no backup
set noswapfile                  " no swapfile
set pastetoggle=<F2>            " disables smart indenting when pasting from outside the terminal

" Setup Bundle Support {
" The next two lines ensure that the ~/.vim/bundle/ system works
    filetype off
    runtime! autoload/pathogen.vim
    silent! call pathogen#helptags()
    silent! call pathogen#runtime_append_all_bundles()
" }

" Setup temp directory
"set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

au BufWinLeave * silent! mkview     "make vim save view (state) (folds, cursor, etc)
au BufWinEnter * silent! loadview   "make vim load view (state) (folds, cursor, etc)

""""""""""""""""""""""""""""""
" File Formats
"""""""""""""""""""""""""

set fileformats=unix                                        " always use Unix file format

au BufRead,BufNewFile *.txt setfiletype text
au BufRead,BufNewFile *.csv,*.tsv setfiletype csv           " Allow for ?sv file editing
au BufRead,BufNewFile *.prb setfiletype tex
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.tpl set filetype=smarty
au BufNewFile,BufRead *.coffee set filetype=coffee

let g:tex_flavor='latex'                                    " use latex styles


""""""""""""""""""""""""""""""
" Style and Syntax
"""""""""""""""""""""""""

filetype plugin on
filetype plugin indent on                                   " enable file type check and indent
syntax on                                                   " enable syntax highlighting
au BufRead,BufNewFile *.tsv silent! Delimiter \t            " set the tsv delimiter to a TAB
au BufRead,BufNewFile */AI/*/*.pl setlocal filetype=prolog

set nu                                                      " set numbering rows
au StdinReadPost * setlocal nonu                            " but not in man

set tabstop=4                                               " spaces per tab
set softtabstop=4
set shiftwidth=4                                            " spaces per indent
set expandtab                                               " expand tabs to spaces
set smarttab                                                " at start shiftwidth, else tabstop
set autoindent                                              " indent new line to same as previous
set smartindent                                             " indent on code type
set list                                                    " EOL, trailing spaces, tabs: show them.
set lcs=tab:├─                                              " Tabs are shown as ├──├──
set lcs+=trail:␣                                            " Show trailing spaces as ␣

""" control wrapping
set linebreak                                               " wraps without <eol>
au Filetype text setlocal textwidth=0                       " overide system vimrc
au Filetype python setlocal textwidth=78
au Filetype html,tex,text setlocal wrapmargin=2
au Filetype html,tex,text setlocal formatoptions+=wa
au Filetype python setlocal formatoptions+=wa2
au Filetype python setlocal expandtab                       " for python 3 compatibility
au Filetype coffee setlocal expandtab                       " expand tabs to spaces
au Filetype coffee setlocal list                            " expand tabs to spaces
let coffee_folding = 1

" Remove trailing whitespaces and ^M chars
autocmd FileType c,cpp,java,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

""""""""""""""""""""""""""""""
" VIM UI
"""""""""""""""""""""""""

set ruler                                                   " always display cursor position
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

set wmh=0

""" map <Space> to :noh and clear messages
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

""" Folding
"set foldcolumn=5

au Filetype c,cpp,css,html,js,php,python,sh,verilog,vhdl,xml setlocal foldcolumn=5
au Filetype prolog setlocal foldcolumn=3
au Filetype c,cpp,css,html,js,coffee,php,prolog,python,sh,verilog,vhdl,xml setlocal foldmethod=indent
au Filetype c,cpp,css,html,js,coffee,php,prolog,python,sh,verilog,vhdl,xml setlocal foldlevel=0
au Filetype c,cpp,css,html,js,coffee,php,prolog,python,sh,verilog,vhdl,xml setlocal foldlevelstart=2
au Filetype c,cpp,css,html,js,coffee,php,prolog,python,sh,verilog,vhdl,xml setlocal foldminlines=1
au Filetype c,cpp,css,html,js,coffee,php,prolog,python,sh,verilog,vhdl,xml setlocal foldnestmax=10
au Filetype c,cpp,js setlocal foldignore="#"
au Filetype php,css,html,less,coffee setlocal nowrap
au Filetype coffee setlocal foldmethod=indent
"au Filetype python,sh,js,css,html,xml,php,vhdl,verilog set foldignore="#"

" Key (re)Mappings {

    "The default leader is '\', but many people prefer ',' as it's in a standard location
    let mapleader = ','

    """ Smart way to move windows
    map <C-j> <C-W>j
    map <C-k> <C-W>k
    "map <C-j> <C-W>j<C-W>_
    "map <C-k> <C-W>k<C-W>_
    map <C-h> <C-W>h
    map <C-l> <C-W>l
    map gw <C-W>
    map gW <C-W>

    " Window resizing with arrow keys
    nmap <C-Down> <C-W>-<C-W>-
    nmap <C-Up> <C-W>+<C-W>+
    nmap <C-right> <C-W>><C-W>>
    nmap <C-left> <C-W><<C-W><

    """ Window moving with arrow keys
    "map <C-Down> <C-W>j<C-W>_
    "map <C-Up> <C-W>k<C-W>_
    "map <C-Left> <C-W>h<C-W>
    "map <C-Right> <C-W>l<C-W>

    " Easier moving in tabs and windows
    "   map <C-J> <C-W>j<C-W>
    "   map <C-K> <C-W>k<C-W>
    "   map <C-L> <C-W>l<C-W>
    "   map <C-H> <C-W>h<C-W>
    "   map <C-K> <C-W>k<C-W>

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

    " exhuma's .vimrc - https://github.com/exhuma/vimfiles/blob/master/.vimrc
    " {
        " Switch to previous/next buffer
        nmap <kMinus>  :bprevious<CR>
        nmap <kPlus>   :bnext<CR>
    "}

    " auto reload vimrc
    autocmd BufWritePost .vimrc !source ~/.vimrc

    " Allows you to edit files that are not in sudo by using w!!
    cmap w!! w !sudo tee % >/dev/null

""""""""""""""""""""""""""""""
" Spelling
"""""""""""""""""""""""""

" set spell                     " enable spell check
" au BufRead *.use,*.conf,*.cfg,*/conf.d/*,*.log,.vimrc set nospell

au Filetype c,css,html,javascript,php,tex,text setlocal spell
au Filetype help setlocal nospell
au StdinReadPost * setlocal nospell         " but not in man

set spelllang=en_gb                 " spell check language to GB
"set spellfile=/home/tom/.vim/spell/I.latin1.add        " set my spellfile
"au FileType tex setlocal spellfile+=/home/tom/.vim/spell/latex.latin1.add
"au BufRead tjh08*.* setlocal spellfile+=/home/tom/.vim/spell/elec.latin1.add

" set dictionary+=/usr/share/dict/words         " add standard words


""""""""""""""""""""""""""""""
" Completion
"""""""""""""""""""""""""


" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=longest,menuone,menu,preview

set complete=.,k,w,b,u,t,i              " add dictionary completion

"set omnifunc=syntaxcomplete#Complete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType less set omnifunc=csscomplete#CompleteCSS
"autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType coffee set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
runtime ftplugin/man.vim                " Man page plugin
runtime ftplugin/pdf.vim                " PDF plugin

""" attempt to continue completion
"imap <silent> <expr> <buffer> <CR> pumvisible() ? "<CR><C-R>=(col('.')-1&&match(getline(line('.')), '\\.', col('.')-2) == col('.')-2)?\"\<lt>C-X>\<lt>C-O>\":\"\"<CR>" : "<CR>"

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

""" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1             " show function parameters
let OmniCpp_MayCompleteDot = 1              " autocomplete after .
let OmniCpp_MayCompleteArrow = 1            " autocomplete after ->
let OmniCpp_MayCompleteScope = 1            " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

""" Maps auto-completion to <Tab>, else inputs Tab.
"function! SuperCleverTab()
    "if strpart(getline("."), 0, col(".")-1) =~ '^\s*$\|^.*\s$\|^.*[,;)}\]]$'
        "return "\<Tab>"
    "else
        "if &omnifunc != ''
            "return "\<C-X>\<C-O>"
        "else
            "return "\<C-N>"
        "endir
    "endif
"endfunction
"
"inoremap <Tab> <C-R>=SuperCleverTab()<cr>

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
    nnoremap <silent> <F10> :YRShow<CR> 
"}
""""""""""""""""""""""""""""""
" Printing
"""""""""""""""""""""""""

set printoptions=left:4pc,right:4pc,top:5pc,bottom:5pc
set printfont=:h9
