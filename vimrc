" Header {{{
    " File: vimrc
    " Author: Jonathan Kim
    " Description: My personal vim file
" }}}

" General settings {{{

    set nocompatible                            " not VI compatible
    set vb t_vb=                                " disable bell
    set history=500                             " lines of history to remember
    set mouse=a                                 " always enable mouse input

    " Colour schemes {{{
        set background=dark
        colorscheme solarized                   " prefered colour scheme
    " }}}

    set showmode                                " display the current mode
    set hidden                                  " hides buffers instead of closing them
    set nobackup                                " no backup
    set noswapfile                              " no swapfile
    set pastetoggle=<F3>                        " disables smart indenting when pasting from outside the terminal
    set undofile

    set exrc                                    " enable per-directory .vimrc files
    set secure                                  " disable unsafe commands in local .vimrc files

    " Setup Bundle Support {{{
    " The next two lines ensure that the ~/.vim/bundle/ system works
        filetype off
        runtime! autoload/pathogen.vim
        silent! call pathogen#helptags()
        silent! call pathogen#runtime_append_all_bundles()
    " }}}

    " Setup temp directory
    set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
    
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*   " for Linux/MacOSX

    au BufWinLeave * silent! mkview             " make vim save view (state) (folds, cursor, etc)
    au BufWinEnter * silent! loadview           " make vim load view (state) (folds, cursor, etc)

    " Set working directory as the current directory
    "autocmd BufEnter * silent! lcd %:p:h
    
    "set autochdir

" }}}

" File Formats {{{

    set fileformats=unix                                        " always use Unix file format

" }}}

" Style and Syntax {{{

    filetype plugin indent on                                   " enable file type check and indent
    syntax on                                                   " enable syntax highlighting
    "set t_Co=256
    let g:solarized_termcolors=256

    set nu                                                      " set numbering rows
    au StdinReadPost * setlocal nonu                            " but not in man

    if has('statusline') " {{{
        set laststatus=2

        " Broken down into easily includeable segments
        "set statusline=\ [%{getcwd()}]          " current dir
        set statusline=%<%f\    " Filename
        set statusline+=%{fugitive#statusline()} "  Git Hotness
        set statusline+=\ [%{&ff}/%Y]            " filetype
        set statusline+=\ %w%h%m%r\ " Options
        "set statusline+=\ [A=\%03.3b/H=\%02.2B] " ASCII / Hexadecimal value of char
        "set statusline+=%=%-14.(%{WordCount()}\ %l,%c%V%)\ %p%%  " Right aligned file nav info
        set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
    endif " }}}

    set tabstop=4                                               " spaces per tab
    set softtabstop=4
    set shiftwidth=4                                            " spaces per indent
    set expandtab                                               " expand tabs to spaces
    set smarttab                                                " at start shiftwidth, else tabstop
    set autoindent                                              " indent new line to same as previous
    set smartindent                                             " indent on code type
    set nolist                                                  " disable list on most files
    set foldenable  				                            " auto fold code
    set gdefault

    """ control wrapping
    set wrap
    set linebreak                                                  " wraps without <eol>

    """ Folding
    set foldcolumn=2                                            " set width of folding column (appears on left side of ruler)

    "au Filetype text setlocal textwidth=0                          " overide system vimrc
    "au Filetype python setlocal textwidth=78
    "au Filetype html,tex,text setlocal formatoptions+=wa
    "au Filetype python setlocal formatoptions+=wa2
    au Filetype python,coffee,jade  setlocal expandtab               " expand tabs to spaces
    au Filetype python,coffee,jade  setlocal list                    " show tabs and trailing spaces
    au Filetype python,coffee,jade  setlocal lcs=tab:├─              " Tabs are shown as ├──├──
    au Filetype python,coffee,jade  setlocal lcs+=trail:␣            " Show trailing spaces as ␣
    au Filetype vimwiki,mkd         setlocal wrap                           " Set wrappining on markdown and vimwiki files 
    au Filetype vimwiki,mkd         setlocal linebreak                      " Wrap on linebreak 
    let coffee_folding = 1 

    au BufRead,BufNewFile *.txt         setfiletype text
    au BufRead,BufNewFile *.csv,*.tsv   setfiletype csv           " allow for ?sv file editing
    au BufRead,BufNewFile *.prb         setfiletype tex
    au BufRead,BufNewFile *.less        setlocal filetype=less              " less syntax
    au BufRead,BufNewFile *.tpl         setlocal filetype=smarty.html        " smarty syntax
    au BufRead,BufNewFile *.coffee      setlocal filetype=coffee          " coffee syntax
    au BufRead,BufNewFile *.styl        setlocal filetype=stylus            " stylus syntax
    au BufRead,BufNewFile gitconfig     setlocal filetype=gitconfig      " gitconfig syntax
    au BufRead,BufNewFile *.twig        setlocal filetype=html              " twig
    au BufRead,BufNewFile *.jsx         setlocal filetype=jsx                " jsx
    au BufRead,BufNewFile *.jsx         setlocal syntax=javascript           " jsx

    au Filetype c,cpp,css,less,coffee,html,jinja,sh,verilog,vhdl,xml setlocal foldcolumn=2
    au Filetype c,cpp,css,less,html,jinja,coffee,prolog,sh,verilog,vhdl,xml setlocal foldmethod=indent
    au Filetype c,cpp,css,less,html,jinja,coffee,prolog,sh,verilog,vhdl,xml setlocal foldlevel=0
    au Filetype c,cpp,css,less,html,jinja,coffee,prolog,sh,verilog,vhdl,xml setlocal foldlevelstart=2
    au Filetype c,cpp,css,less,html,jinja,coffee,prolog,sh,verilog,vhdl,xml setlocal foldminlines=1
    au Filetype c,cpp,css,less,html,jinja,coffee,prolog,sh,verilog,vhdl,xml setlocal foldnestmax=20
    au Filetype vim setlocal foldmethod=marker
    au Filetype vimwiki setlocal foldmarker={,}
    au Filetype vimwiki setlocal foldmethod=marker
    au Filetype c,cpp,coffee setlocal foldignore="#"
    "au Filetype python,sh,js,css,html,xml,php,vhdl,verilog set foldignore="#"
    autocmd BufNewFile,BufRead *.json set ft=javascript

    " PHP {{{
        au Filetype php setlocal wrap                           " wrap lines in PHP
        au Filetype php setlocal foldcolumn=2
        au Filetype php setlocal foldmethod=indent
        au Filetype php setlocal foldlevel=0
        au Filetype php setlocal foldlevelstart=2
        au Filetype php setlocal foldminlines=1
        au Filetype php setlocal foldnestmax=20
        au Filetype php setlocal list                           " show tabs and trailing spaces
        au Filetype php setlocal lcs=tab:├─                     " Tabs are shown as ├──├──
        au Filetype php setlocal lcs+=trail:␣                   " Show trailing spaces as ␣
        au Filetype php setlocal spell
    " }}}
    
    " JS {{{
        au Filetype javascript setlocal wrap                    " wrap lines in javascript
        au Filetype javascript setlocal foldcolumn=2
        au Filetype javascript setlocal foldmethod=indent
        au Filetype javascript setlocal foldlevel=0
        au Filetype javascript setlocal foldlevelstart=2
        au Filetype javascript setlocal foldminlines=1
        au Filetype javascript setlocal foldnestmax=20
        au Filetype javascript setlocal list                    " show tabs and trailing spaces
        au Filetype javascript setlocal lcs=tab:├─              " Tabs are shown as ├──├──
        au Filetype javascript setlocal lcs+=trail:␣            " Show trailing spaces as ␣
        au Filetype javascript setlocal spell
    " }}}

    " JSX {{{
        au Filetype jsx setlocal wrap                           " wrap lines in javascript
        au Filetype jsx setlocal list                           " show tabs and trailing spaces
        au Filetype jsx setlocal lcs=tab:├─                     " Tabs are shown as ├──├──
        au Filetype jsx setlocal lcs+=trail:␣                   " Show trailing spaces as ␣
        au Filetype jsx setlocal spell
        au FileType jsx setlocal shiftwidth=2
    " }}}

    " Python {{{
        au Filetype python setlocal wrap
        au Filetype python setlocal foldcolumn=2
        au Filetype python setlocal foldmethod=indent
        au Filetype python setlocal foldlevel=0
        au Filetype python setlocal foldlevelstart=2
        au Filetype python setlocal foldminlines=1
        au Filetype python setlocal foldnestmax=20
        au Filetype python setlocal list                           " show tabs and trailing spaces
        au Filetype python setlocal lcs=tab:├─                     " Tabs are shown as ├──├──
        au Filetype python setlocal lcs+=trail:␣                   " Show trailing spaces as ␣
        au Filetype python setlocal spell
    " }}}

    " SCSS {{{
        au Filetype scss setlocal wrap
        au Filetype scss setlocal foldcolumn=2
        au Filetype scss setlocal foldmethod=indent
        au Filetype scss setlocal foldlevel=0
        au Filetype scss setlocal foldlevelstart=2
        au Filetype scss setlocal foldminlines=1
        au Filetype scss setlocal foldnestmax=20
        au Filetype scss setlocal list                           " show tabs and trailing spaces
        au Filetype scss setlocal lcs=tab:├─                     " Tabs are shown as ├──├──
        au Filetype scss setlocal lcs+=trail:␣                   " Show trailing spaces as ␣
        au Filetype scss setlocal spell
    " }}}

    let g:tex_flavor='latex'                                    " use latex styles

    " Highlight the 81st column 
    set textwidth=80
    set colorcolumn=+1

" }}}

" VIM UI {{{

    set ruler                                                   " always display cursor position
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)          " a ruler on steroids
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
" }}}

" Key (re)Mappings {{{

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
    nnoremap <leader>w<CR> <C-w>v<C-w>l                        " open new window in vertical split
    nnoremap <leader>h<CR> <C-w>s<C-w>j                        " open new window in horizontal split

    " Window resizing with arrow keys
    nmap <Down> <C-W>-<C-W>-
    nmap <Up> <C-W>+<C-W>+
    nmap <right> <C-W>><C-W>>
    nmap <left> <C-W><<C-W><

    " Wrapped lines goes down/up to next row, rather than next line in file.
    nnoremap j gj
    nnoremap k gk

    " Stupid shift key fixes
    cmap Xa xa
    cmap xA xa
    cmap Q q
    cmap Tabe tabe

    " Yank from the cursor to the end of the line, to be consistent with C and D.
    nnoremap Y y$

    """ Code folding options
    "nmap <leader>f0 :set foldlevel=0<CR>
    "nmap <leader>f1 :set foldlevel=1<CR>
    "nmap <leader>f2 :set foldlevel=2<CR>
    "nmap <leader>f3 :set foldlevel=3<CR>
    "nmap <leader>f4 :set foldlevel=4<CR>
    "nmap <leader>f5 :set foldlevel=5<CR>
    "nmap <leader>f6 :set foldlevel=6<CR>
    "nmap <leader>f7 :set foldlevel=7<CR>
    "nmap <leader>f8 :set foldlevel=8<CR>
    "nmap <leader>f9 :set foldlevel=9<CR>

    "inoremap () ()<Left>
    "inoremap [] []<Left>
    "inoremap '' ''<Left>
    "inoremap "" ""<Left>

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
    " {{{
        " Switch to previous/next buffer
        nmap <kMinus>  :bprevious<CR>
        nmap <kPlus>   :bnext<CR>
    " }}}

    " auto reload vimrc
    "autocmd BufWritePost vimrc !source ~/vim/vimrc

    " quick edit vimrc
    nmap <leader>v :e ~/vim/vimrc<CR>

    inoremap <F1> <ESC>
    nnoremap <F1> <ESC>
    vnoremap <F1> <ESC>

    noremap <F12> <Esc>:syntax sync fromstart<CR>       " fix syntax highlighting problems
    inoremap <F12> <C-o>:syntax sync fromstart<CR>      " fix syntax highlighting problems

    "nnoremap ; :

    " Strip all trailing whitespaces in a file
    nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

    " Calculator mapping
    inoremap <C-A> <C-O>yiW<End>=<C-R>=<C-R>0<CR>

    " On ubuntu (running Vim in gnome-terminal)
    " The reason for the double-command on <C-c> is due to some weirdness with the X clipboard system.
    nnoremap <C-c> "*y
    vnoremap <C-c> "*y
    nnoremap <C-v> "*gP
    vnoremap <C-v> "*gP

    " Copy to system clipboard
    vnoremap <leader>y "*y

    " Regenerate tags
    noremap <Leader>T :!ctags-proj.sh<CR>

" }}}

" Spelling {{{

    " set spell                     " enable spell check
    " au BufRead *.use,*.conf,*.cfg,*/conf.d/*,*.log,.vimrc set nospell

    au Filetype c,css,html,tex,text,mkd,wiki,vimwiki setlocal spell
    au BufNewFile,BufRead COMMIT_EDITMSG setlocal spell " git commit messages
    au Filetype help setlocal nospell
    au StdinReadPost * setlocal nospell         " but not in man

    set spelllang=en_gb                         " spell check language to GB

    "set dictionary+=/usr/share/dict/words       " add standard words
    
" }}}

" Completion {{{

    " automatically open and close the popup menu / preview window
    au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
    set completeopt=longest,menuone,menu,preview

    "set complete=.,k,w,b,u,t,i              " add dictionary completion

    "set omnifunc=syntaxcomplete#Complete
    autocmd FileType css set omnifunc=csscomplete#CompleteCSS
    autocmd FileType less set omnifunc=csscomplete#CompleteCSS
    autocmd FileType python set omnifunc=pythoncomplete#Complete
    autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType coffee set omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType php set omnifunc=phpcomplete#CompletePHP
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    runtime ftplugin/man.vim                " Man page plugin
    runtime ftplugin/pdf.vim                " PDF plugin

    """ ctags config
    set tags+=~/.vim/tags
    "au BufWritePost c,cpp,*.h !ctags -R --c++-kinds=+p --fields=+iaS --extra=+q
    "noremap mtl :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
    "setlocal tags=tags,.tags,./tags;/,~/.vim/tags
    "au Filetype cpp set tags+=~/.vim/tags/cpp
    "au BufRead,BufNew */msp430/*/*.c setlocal tags+=~/.vim/tags/msp430
    "au BufRead,BufNew */avr/*/*/*/*.c setlocal tags+=~/.vim/tags/avr
    "set tags+=~/.vim/tags/sdl
    "au Filetype cpp set tags+=~/.vim/tags/qt4
    "set tags+=~/.vim/tags/gtk-2

" }}}

" Plugin configuration {{{

    " Maps auto-completion to <Tab>, else inputs Tab. {{{
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

        " inoremap <Tab> <C-R>=SuperCleverTab()<cr>
    " }}}

    " Supertab {{{
        "let g:SuperTabDefaultCompletionType = "<C-X><C-O>" 
        let g:SuperTabDefaultCompletionType = "context"
    " }}}

    " NerdTree {{{
        map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
        map <leader>e :NERDTreeFind<CR>
        nmap <leader>nt :NERDTreeFind<CR>

        let NERDTreeShowBookmarks=1
        let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\.orig']
        "let NERDTreeChDirMode=0
        "let NERDTreeQuitOnOpen=1
        let NERDTreeShowHidden=1
        let NERDTreeKeepTreeInNewTab=1
        let NERDTreeWinSize=20
        " autocmd VimEnter * NERDTree
        " autocmd BufEnter * NERDTreeMirror
    " }}}

    " Gundo {{{
        nnoremap <F5> :GundoToggle<CR>
        let g:gundo_right = 1
    " }}}

    " Ctags {{{
        " This will look in the current directory for 'tags', and work up the tree towards root until one is found.
            "set tags=./tags;/,$HOME/vimtags
            "map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR> " C-\ - Open the definition in a new tab
            "map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>      " A-] - Open the definition in a vertical split
    " }}}

    " Session {{{
        :let g:session_autoload = 'no'
        :let g:session_autosave = 'no'
    " }}}

    " MiniBufExplorer {{{
        let g:miniBufExplorerMoreThanOne = 0
    " }}}

    " Yankring {{{
        "nnoremap <silent> <F6> :YRRefresh<CR>:YRShow<CR>
        nnoremap <silent> <F6> :YRShow<CR>
        let g:yankring_clipboard_monitor = 1
    " }}}

    " Sparkup {{{
        let g:sparkupExecuteMapping = '<leader>z'
    " }}}

    " Tcomment {{{

    " }}}

    " Vimwiki {{{
        let g:vimwiki_list = [{'path': '~/Dropbox/Wiki/', 'syntax': 'markdown'}]
    " }}}

    " Vim Task {{{
        inoremap <silent> <buffer> <leader>c<CR> <ESC>:call Toggle_task_status()<CR>i
        noremap <silent> <buffer> <leader>c<CR> :call Toggle_task_status()<CR>
    " }}}

    " Ack {{{
        "let g:ackprg="ack-grep -H --nocolor --nogroup --column"
        "let g:ackprg = 'ag --nogroup --nocolor --column'
        nnoremap <leader>a :Ack 
    " }}}

    " Fugitive {{{
        nnoremap <leader>gs :Gstatus<CR>
        nnoremap <leader>gc :Gcommit<CR>
    " }}}

    " Tasklist {{{
        map T <Plug>TaskList
        let g:tlWindowPosition = 1
    " }}}

    " Ctrlp {{{
        nnoremap <leader>t :CtrlP<CR> 
        nnoremap <leader><space> :CtrlPBuffer<CR> 
        "let g:ctrlp_working_path_mode = 2
        let g:ctrlp_working_path_mode = 'r'
        set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.un~,*/node_modules/*,*.orig,*.pyc,*/vendor/*,*/build/*   " Linux/MacOSX
        let g:ctrlp_root_markers = ['.ctrlp']
        let g:ctrlp_extensions = ['funky']
        "let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
    " }}}

    " Ctrlp funky {{{
        nnoremap <Leader>f :CtrlPFunky<CR>
        " narrow the list down with a word under cursor
        nnoremap <Leader>F :execute 'CtrlPFunky ' . expand('<cword>')<CR>
    " }}}

    " Tagbar {{{
        nmap <F8> :TagbarToggle<CR> 
    " }}}

    " Vimroom {{{
        let g:vimroom_sidebar_height = 0
    " }}}

    " Syntastic {{{
        "let g:syntastic_auto_jump=1
        let g:syntastic_auto_loc_list=1
        let g:syntastic_loc_list_height=5
        let g:syntastic_mode_map = { 'mode': 'active',
                                   \ 'active_filetypes': [],
                                   \ 'passive_filetypes': ['less', 'phtml', 'html'] }
        let g:syntastic_python_checkers=['python', 'pyflakes', 'pep8']
        let g:syntastic_scss_checkers=['sass', 'scss_lint']
        let g:syntastic_scss_scss_lint_args="--exclude-linter Indentation,SortedProperties"
        let g:syntastic_php_checkers=['php']
        let g:syntastic_javascript_checkers=['jshint', 'jscs']
        let g:syntastic_jsx_checkers=['jsxhint', 'jscs']
    " }}}

    " Neocomplcache {{{
        " Use neocomplcache.
        let g:neocomplcache_enable_at_startup = 1
        
        " Use smartcase.
        let g:neocomplcache_enable_smart_case = 1

        set completeopt-=preview

        " <TAB>: completion.
        inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
        "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
        
        " <CR>: close popup and save indent.
        inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
        function! s:my_cr_function()
            "return neocomplcache#smart_close_popup() . "\<CR>"
            " For no inserting <CR> key.
            return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
        endfunction

        " Enable heavy omni completion.
        if !exists('g:neocomplcache_omni_patterns')
            let g:neocomplcache_omni_patterns = {}
        endif
        if !exists('g:neocomplcache_force_omni_patterns')
          let g:neocomplcache_force_omni_patterns = {}
        endif
        let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
    " }}}
    
    " Jedi Vim {{{
    " }}}
    
    " Neosnippet {{{
        " Plugin key-mappings.
        imap <C-k>     <Plug>(neosnippet_expand_or_jump)
        smap <C-k>     <Plug>(neosnippet_expand_or_jump)
        xmap <C-k>     <Plug>(neosnippet_expand_target)

        " SuperTab like snippets behavior.
        "imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            "\ "\<Plug>(neosnippet_expand_or_jump)"
            "\: pumvisible() ? "\<C-n>" : "\<TAB>"
        "smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            "\ "\<Plug>(neosnippet_expand_or_jump)"
            "\: "\<TAB>"

        " Enable snipMate compatibility feature.
        let g:neosnippet#enable_snipmate_compatibility = 1

        " Tell Neosnippet about the other snippets
        let g:neosnippet#snippets_directory='~/.vim/bundle-all/snippets/snippets'
    " }}}
" }}}

" Printing {{{

    set printoptions=left:4pc,right:4pc,top:5pc,bottom:5pc
    set printfont=:h9

" }}}

" Local vimrc {{{
  if filereadable(expand("$HOME/.vimrc.local"))
    source $HOME/.vimrc.local
  endif
" }}}
