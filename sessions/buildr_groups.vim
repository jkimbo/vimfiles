" ~/.vim/sessions/buildr_groups.vim: Vim session script.
" Created by session.vim 1.4.9 on 25 July 2011 at 13:16:06.
" Open this file in Vim and run :source % to restore your session.

set guioptions=aegimrLtT
silent! set guifont=
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if !exists('g:colors_name') || g:colors_name != 'solarized' | colorscheme solarized | endif
set background=light
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/www/buildr
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +24 htdocs/modules/common/common.js
badd +51 htdocs/modules/groups/groups.js
badd +154 htdocs/modules/groups/jquery.tagsinput.js
badd +125 app/modules/main/controllers/GroupController.php
badd +14 app/modules/main/views/group/index.tpl
badd +312 ~/.vimrc
badd +26 app/models/GroupQuery.php
badd +23 app/classes/Controllers/Buildr_Controller.php
badd +172 app/models/om/BasePasswordResetsQuery.php
badd +0 app/modules/global/views/page.tpl
badd +452 htdocs/modules/groups/jquery.autocomplete.js
badd +0 htdocs/modules/common/common.less
badd +0 htdocs/modules/groups/jquery.tagsinput.less
silent! argdel *
set lines=66 columns=247
edit htdocs/modules/groups/jquery.tagsinput.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
3wincmd k
wincmd w
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 123) / 247)
exe '2resize ' . ((&lines * 61 + 33) / 66)
exe 'vert 2resize ' . ((&columns * 215 + 123) / 247)
exe '3resize ' . ((&lines * 0 + 33) / 66)
exe 'vert 3resize ' . ((&columns * 215 + 123) / 247)
exe '4resize ' . ((&lines * 0 + 33) / 66)
exe 'vert 4resize ' . ((&columns * 215 + 123) / 247)
exe '5resize ' . ((&lines * 0 + 33) / 66)
exe 'vert 5resize ' . ((&columns * 215 + 123) / 247)
argglobal
enew
file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 246 - ((43 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
246
normal! 09l
wincmd w
argglobal
edit htdocs/modules/groups/groups.js
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 51 - ((45 * winheight(0) + 0) / 0)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
51
normal! 05l
wincmd w
argglobal
edit htdocs/modules/common/common.less
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 597 - ((46 * winheight(0) + 0) / 0)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
597
normal! 018l
wincmd w
argglobal
edit htdocs/modules/groups/jquery.tagsinput.less
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 0) / 0)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 123) / 247)
exe '2resize ' . ((&lines * 61 + 33) / 66)
exe 'vert 2resize ' . ((&columns * 215 + 123) / 247)
exe '3resize ' . ((&lines * 0 + 33) / 66)
exe 'vert 3resize ' . ((&columns * 215 + 123) / 247)
exe '4resize ' . ((&lines * 0 + 33) / 66)
exe 'vert 4resize ' . ((&columns * 215 + 123) / 247)
exe '5resize ' . ((&lines * 0 + 33) / 66)
exe 'vert 5resize ' . ((&columns * 215 + 123) / 247)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
tabnext 1
1wincmd w
bwipeout
NERDTree ~/www/buildr
1resize 64|vert 1resize 31|2resize 60|vert 2resize 215|3resize 0|vert 3resize 215|4resize 0|vert 4resize 215|5resize 1|vert 5resize 215|
tabnext 1
2wincmd w

" vim: ft=vim ro nowrap smc=128
