""""""""""""""""""""""""""""""
" General settings
"""""""""""""""""""""""""

set nocompatible					" not VI compatible
set vb t_vb=						" disable bell
set listchars=trail:-,nbsp:% 				" characters to display specials
set history=50 						" lines of history to remember
set mouse=a						" always enable mouse input

map! ii <Esc>

syntax enable 
"if has('gui_running')
set background=light
"else 
	"set background=dark
"endif
set t_Co=16
let g:solarized_termcolors=16
colorscheme solarized

"colorscheme TjlH_col
"colorscheme desert
"colorscheme elflord

"let &cdpath=substitute($CDPATH, ':', ',', 'g')

" Setup Bundle Support {
" The next two lines ensure that the ~/.vim/bundle/ system works
	runtime! autoload/pathogen.vim
	silent! call pathogen#helptags()
	silent! call pathogen#runtime_append_all_bundles()
" }


""""""""""""""""""""""""""""""
" File Formats
"""""""""""""""""""""""""

set fileformats=unix					" always use Unix file format

au BufRead,BufNewFile *.txt setfiletype text
au BufRead,BufNewFile *.csv,*.tsv setfiletype csv	" Allow for ?sv file editing
au BufRead,BufNewFile *.prb setfiletype tex
"au BufRead,BufNewFile *.bib setfiletype bib

"au FileType python set bomb				" enable BOM for listend filetypes

let g:tex_flavor='latex'				" use latex styles

""" use skeleton files
au! BufNewFile * silent! 0r ~/Templates/%:e.%:e


""""""""""""""""""""""""""""""
" Style and Syntax
"""""""""""""""""""""""""

filetype plugin indent on				" enable file type check and indent
syntax on						" enable syntax highlighting
au BufRead,BufNewFile *.tsv silent! Delimiter \t	" set the tsv delimiter to a TAB
au BufRead,BufNewFile */AI/*/*.pl setlocal filetype=prolog

set nu							" set numbering rows
au StdinReadPost * setlocal nonu			" but not in man

set tabstop=4						" spaces per tab
set softtabstop=4
set shiftwidth=4					" spaces per indent
set noexpandtab						" don't expand tabs to spaces
set smarttab						" at start shiftwidth, else tabstop
au Filetype python setlocal expandtab			" for python 3 compatibility

""" control wrapping
set linebreak 						" wraps without <eol>
au Filetype text setlocal textwidth=0			" overide system vimrc
au Filetype python setlocal textwidth=78
au Filetype html,tex,text setlocal wrapmargin=2
au Filetype html,tex,text setlocal formatoptions+=wa
au Filetype python setlocal formatoptions+=wa2
au Filetype php,css,html setlocal nowrap

""""""""""""""""""""""""""""""
" VIM UI
"""""""""""""""""""""""""

set ruler						" always display cursor position

set incsearch						" search as type
set ignorecase smartcase 			" ignore case except explicit UC

set scrolloff=4						" keep cursor 5 lines from edge
set sidescrolloff=10

"set wildmenu
set wildmode=longest:list			" bash style file completion

set tabpagemax=40					" max number opening tabs = ?
set showtabline=1					" standard tabbed viewing

set viminfo='100 					" save marks and jumps in viminfo

set whichwrap=b,s,>,< 				" which movement chars move lines

set wmh=0							" set window minimum hight to 0
set wmw=0

""" map <Space> to :noh and clear messages
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

""" Folding
"set foldcolumn=5

au Filetype c,cpp,css,html,js,php,python,sh,verilog,vhdl,xml setlocal foldcolumn=5
au Filetype prolog setlocal foldcolumn=3
au Filetype c,cpp,css,html,js,php,prolog,python,sh,verilog,vhdl,xml setlocal foldmethod=indent
au Filetype c,cpp,css,html,js,php,prolog,python,sh,verilog,vhdl,xml setlocal foldlevel=0
au Filetype c,cpp,css,html,js,php,prolog,python,sh,verilog,vhdl,xml setlocal foldlevelstart=2
au Filetype c,cpp,css,html,js,php,prolog,python,sh,verilog,vhdl,xml setlocal foldminlines=1
au Filetype c,cpp,css,html,js,php,prolog,python,sh,verilog,vhdl,xml setlocal foldnestmax=10
au Filetype c,cpp,js setlocal foldignore="#"
"au Filetype python,sh,js,css,html,xml,php,vhdl,verilog set foldignore="#"
"au Filetype python au BufWritePre python mkview
"au Filetype python au BufReadPost python silent loadview

""" Smart way to move windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
"map gw <C-W>
"map gW <C-W>

" resize horzontal split window
nmap <C-Down> <C-W>-<C-W>-
nmap <C-Up> <C-W>+<C-W>+

" resize vertical split window
nmap <C-right> <C-W>><C-W>>
nmap <C-left> <C-W><<C-W><

" make vim more browser like
nmap <Space> <PageDown>

"autocmd BufWritePost .vimrc !source ~/.vimrc	" auto reload vimrc
"
"The default leader is '\', but many people prefer ',' as it's in a standard
"location
let mapleader = ','


""""""""""""""""""""""""""""""
" Spelling
"""""""""""""""""""""""""

" set spell						" enable spell check
" au BufRead *.use,*.conf,*.cfg,*/conf.d/*,*.log,.vimrc set nospell

"au Filetype tex,python,javascript,html,css,php,c,cpp set spell
au Filetype c,css,html,javascript,php,tex,text setlocal spell
au Filetype help setlocal nospell
au StdinReadPost * setlocal nospell			" but not in man

set spelllang=en_gb					" spell check language to GB
set spellfile=/home/tom/.vim/spell/I.latin1.add		" set my spellfile
au FileType tex setlocal spellfile+=/home/tom/.vim/spell/latex.latin1.add
au BufRead tjh08*.* setlocal spellfile+=/home/tom/.vim/spell/elec.latin1.add

" set dictionary+=/usr/share/dict/words			" add standard words


""""""""""""""""""""""""""""""
" Completion
"""""""""""""""""""""""""

"set autoindent						" indent new line to same as previous
set smartindent					" indent on code type

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=longest,menuone,menu,preview

set complete=.,k,w,b,u,t,i				" add dictionary completion

"set omnifunc=syntaxcomplete#Complete
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
runtime ftplugin/man.vim 				" Man page plugin
runtime ftplugin/pdf.vim 				" PDF plugin

""" attempt to continue completion
"imap <silent> <expr> <buffer> <CR> pumvisible() ? "<CR><C-R>=(col('.')-1&&match(getline(line('.')), '\\.', col('.')-2) == col('.')-2)?\"\<lt>C-X>\<lt>C-O>\":\"\"<CR>" : "<CR>"

""" ctags config
au BufWritePost c,cpp,*.h !ctags -R --c++-kinds=+p --fields=+iaS --extra=+q
noremap mtl :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
setlocal tags=tags,.tags,./tags;/,~/.vim/tags
au Filetype cpp set tags+=~/.vim/tags/cpp
au BufRead,BufNew */msp430/*/*.c setlocal tags+=~/.vim/tags/msp430
au BufRead,BufNew */avr/*/*/*/*.c setlocal tags+=~/.vim/tags/avr
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/sdl
"au Filetype cpp set tags+=~/.vim/tags/qt4 
"set tags+=~/.vim/tags/gtk-2 

""""""""""""""""""""""""""""""
" Plugin configuration
"""""""""""""""""""""""""

""" TagList
noremap <silent> mtt :TlistToggle<CR>

""" Pydiction
let g:pydiction_location = '~/.vim/after/pydiction/complete-dict'

""" SuperTab
let g:SuperTabDefaultCompletionType = 'context'
"let g:SuperTabContextDefaultCompletionType = '<c-x><c-o>'
let g:SuperTabMidWordCompletion = 1
let g:SuperTabCrMapping = 1
let g:SuperTabLongestHighlight = 0

""" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 			" show function parameters
let OmniCpp_MayCompleteDot = 1 				" autocomplete after .
let OmniCpp_MayCompleteArrow = 1 			" autocomplete after ->
let OmniCpp_MayCompleteScope = 1 			" autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

""" Maps auto-completion to <Tab>, else inputs Tab.
"function! SuperCleverTab()
"	if strpart(getline("."), 0, col(".")-1) =~ '^\s*$\|^.*\s$\|^.*[,;)}\]]$'
"		return "\<Tab>"
"	else
"		if &omnifunc != ''
"			return "\<C-X>\<C-O>"
"		else
"			return "\<C-N>"
"		endir
"	endif
"endfunction
"
"inoremap <Tab> <C-R>=SuperCleverTab()<cr>

" NERDTree
	map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>

""""""""""""""""""""""""""""""
" Printing
"""""""""""""""""""""""""

set printoptions=left:4pc,right:4pc,top:5pc,bottom:5pc
set printfont=:h9
