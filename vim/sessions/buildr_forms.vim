" ~/.vim/sessions/buildr_forms.vim: Vim session script.
" Created by session.vim 1.4.9 on 25 July 2011 at 14:54:47.
" Open this file in Vim and run :source % to restore your session.

set guioptions=aegimrLtT
silent! set guifont=
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if !exists('g:colors_name') || g:colors_name != 'solarized' | colorscheme solarized | endif
set background=light
call setqflist([{'lnum': 44194, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParam	app/classes/Display/TemplateTranslator.php	/^	public function getParam($name) { return $this->_params[$name]; }$/;"	f'}, {'lnum': 44195, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParam	app/classes/Processors/BaseProcessor.php	/^	public function getParam($name) { return $this->_params[$name]; }$/;"	f'}, {'lnum': 44196, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParam	app/models/om/BaseContentTypePropertyValidator.php	/^	public function getParam()$/;"	f'}, {'lnum': 44197, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParam	app/thirdparty/Zend/Controller/Dispatcher/Abstract.php	/^    public function getParam($name)$/;"	f'}, {'lnum': 44198, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParam	app/thirdparty/Zend/Controller/Dispatcher/Interface.php	/^    public function getParam($name);$/;"	f'}, {'lnum': 44199, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParam	app/thirdparty/Zend/Controller/Front.php	/^    public function getParam($name)$/;"	f'}, {'lnum': 44200, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParam	app/thirdparty/Zend/Controller/Request/Abstract.php	/^    public function getParam($key, $default = null)$/;"	f'}, {'lnum': 44201, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParam	app/thirdparty/Zend/Controller/Request/Http.php	/^    public function getParam($key, $default = null)$/;"	f'}, {'lnum': 44202, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParam	app/thirdparty/Zend/Controller/Router/Abstract.php	/^    public function getParam($name)$/;"	f'}, {'lnum': 44203, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParam	app/thirdparty/Zend/Controller/Router/Interface.php	/^    public function getParam($name);$/;"	f'}, {'lnum': 44204, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParam	app/thirdparty/Zend/Gdata/Query.php	/^    public function getParam($name)$/;"	f'}, {'lnum': 44205, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParam	app/thirdparty/Zend/Json/Server/Request.php	/^    public function getParam($index)$/;"	f'}, {'lnum': 44206, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParam	app/thirdparty/Zend/Oauth/Token.php	/^    public function getParam($key)$/;"	f'}, {'lnum': 44207, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParam	app/thirdparty/Zend/Service/ReCaptcha.php	/^    public function getParam($key)$/;"	f'}, {'lnum': 44208, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParam	app/thirdparty/Zend/Tag/Item.php	/^    public function getParam($name)$/;"	f'}, {'lnum': 44209, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParam	app/thirdparty/Zend/Tag/Taggable.php	/^    public function getParam($name);$/;"	f'}, {'lnum': 44210, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParamName	app/thirdparty/Zend/CodeGenerator/Php/Docblock/Tag/Param.php	/^    public function getParamName()$/;"	f'}, {'lnum': 44211, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParamSources	app/thirdparty/Zend/Controller/Request/Http.php	/^    public function getParamSources()$/;"	f'}, {'lnum': 44212, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameter	app/thirdparty/Zend/Server/Method/Prototype.php	/^    public function getParameter($index)$/;"	f'}, {'lnum': 44213, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameter	app/thirdparty/propel-generator/lib/behavior/nestedset/NestedSetBehaviorObjectBuilderModifier.php	/^	protected function getParameter($key)$/;"	f'}, {'lnum': 44214, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameter	app/thirdparty/propel-generator/lib/behavior/nestedset/NestedSetBehaviorPeerBuilderModifier.php	/^	protected function getParameter($key)$/;"	f'}, {'lnum': 44215, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameter	app/thirdparty/propel-generator/lib/behavior/nestedset/NestedSetBehaviorQueryBuilderModifier.php	/^	protected function getParameter($key)$/;"	f'}, {'lnum': 44216, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameter	app/thirdparty/propel-generator/lib/behavior/sortable/SortableBehaviorObjectBuilderModifier.php	/^	protected function getParameter($key)$/;"	f'}, {'lnum': 44217, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameter	app/thirdparty/propel-generator/lib/behavior/sortable/SortableBehaviorPeerBuilderModifier.php	/^	protected function getParameter($key)$/;"	f'}, {'lnum': 44218, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameter	app/thirdparty/propel-generator/lib/behavior/sortable/SortableBehaviorQueryBuilderModifier.php	/^	protected function getParameter($key)$/;"	f'}, {'lnum': 44219, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameter	app/thirdparty/propel-generator/lib/behavior/versionable/VersionableBehaviorObjectBuilderModifier.php	/^	protected function getParameter($key)$/;"	f'}, {'lnum': 44220, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameter	app/thirdparty/propel-generator/lib/behavior/versionable/VersionableBehaviorQueryBuilderModifier.php	/^	protected function getParameter($key)$/;"	f'}, {'lnum': 44221, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameter	app/thirdparty/propel-generator/lib/model/Behavior.php	/^	public function getParameter($name)$/;"	f'}, {'lnum': 44222, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameter	app/thirdparty/propel-generator/lib/model/VendorInfo.php	/^	public function getParameter($name)$/;"	f'}, {'lnum': 44223, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameter	app/thirdparty/propel-runtime/lib/config/PropelConfiguration.php	/^	public function getParameter($name, $default = null)$/;"	f'}, {'lnum': 44224, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameterObjects	app/thirdparty/Zend/Server/Method/Prototype.php	/^    public function getParameterObjects()$/;"	f'}, {'lnum': 44225, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameters	app/thirdparty/Zend/CodeGenerator/Php/Method.php	/^    public function getParameters()$/;"	f'}, {'lnum': 44226, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameters	app/thirdparty/Zend/Feed/Pubsubhubbub/Publisher.php	/^    public function getParameters()$/;"	f'}, {'lnum': 44227, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameters	app/thirdparty/Zend/Feed/Pubsubhubbub/Subscriber.php	/^    public function getParameters()$/;"	f'}, {'lnum': 44228, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameters	app/thirdparty/Zend/Oauth/Http.php	/^    public function getParameters()$/;"	f'}, {'lnum': 44229, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameters	app/thirdparty/Zend/Reflection/Function.php	/^    public function getParameters($reflectionClass = ''Zend_Reflection_Parameter'')$/;"	f'}, {'lnum': 44230, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameters	app/thirdparty/Zend/Reflection/Method.php	/^    public function getParameters($reflectionClass = ''Zend_Reflection_Parameter'')$/;"	f'}, {'lnum': 44231, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameters	app/thirdparty/Zend/Server/Method/Prototype.php	/^    public function getParameters()$/;"	f'}, {'lnum': 44232, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameters	app/thirdparty/Zend/Server/Reflection/Prototype.php	/^    public function getParameters()$/;"	f'}, {'lnum': 44233, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameters	app/thirdparty/phing/classes/phing/filters/BaseParamFilterReader.php	/^    function &getParameters() {$/;"	f'}, {'lnum': 44234, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameters	app/thirdparty/phing/classes/phing/types/selectors/BaseExtendSelector.php	/^    protected function getParameters() {$/;"	f'}, {'lnum': 44235, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameters	app/thirdparty/propel-generator/lib/model/Behavior.php	/^	public function getParameters()$/;"	f'}, {'lnum': 44236, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameters	app/thirdparty/propel-generator/lib/model/VendorInfo.php	/^	public function getParameters()$/;"	f'}, {'lnum': 44237, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParameters	app/thirdparty/propel-runtime/lib/config/PropelConfiguration.php	/^	public function getParameters($type = PropelConfiguration::TYPE_ARRAY)$/;"	f'}, {'lnum': 44238, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParams	app/classes/Display/TemplateTranslator.php	/^	public function getParams() { return $this->_params; }$/;"	f'}, {'lnum': 44239, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParams	app/classes/Processors/BaseProcessor.php	/^	public function getParams() { return $this->_params; }$/;"	f'}, {'lnum': 44240, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParams	app/thirdparty/Zend/Application/Resource/Db.php	/^    public function getParams()$/;"	f'}, {'lnum': 44241, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParams	app/thirdparty/Zend/Controller/Dispatcher/Abstract.php	/^    public function getParams()$/;"	f'}, {'lnum': 44242, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParams	app/thirdparty/Zend/Controller/Dispatcher/Interface.php	/^    public function getParams();$/;"	f'}, {'lnum': 44243, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParams	app/thirdparty/Zend/Controller/Front.php	/^    public function getParams()$/;"	f'}, {'lnum': 44244, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParams	app/thirdparty/Zend/Controller/Request/Abstract.php	/^     public function getParams()$/;"	f'}, {'lnum': 44245, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParams	app/thirdparty/Zend/Controller/Request/Http.php	/^    public function getParams()$/;"	f'}, {'lnum': 44246, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParams	app/thirdparty/Zend/Controller/Router/Abstract.php	/^    public function getParams()$/;"	f'}, {'lnum': 44247, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParams	app/thirdparty/Zend/Controller/Router/Interface.php	/^    public function getParams();$/;"	f'}, {'lnum': 44248, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParams	app/thirdparty/Zend/Json/Server/Request.php	/^    public function getParams()$/;"	f'}, {'lnum': 44249, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParams	app/thirdparty/Zend/Json/Server/Smd/Service.php	/^    public function getParams()$/;"	f'}, {'lnum': 44250, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParams	app/thirdparty/Zend/Navigation/Page/Mvc.php	/^    public function getParams()$/;"	f'}, {'lnum': 44251, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParams	app/thirdparty/Zend/Service/ReCaptcha.php	/^    public function getParams()$/;"	f'}, {'lnum': 44252, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParams	app/thirdparty/Zend/XmlRpc/Request.php	/^    public function getParams()$/;"	f'}, {'lnum': 44253, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParams	app/thirdparty/phing/classes/phing/filters/XsltFilter.php	/^    function getParams() {$/;"	f'}, {'lnum': 44254, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParams	app/thirdparty/phing/classes/phing/types/Parameter.php	/^    function getParams() {$/;"	f'}, {'lnum': 44255, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParams	app/thirdparty/phing/classes/phing/types/PhingFilterReader.php	/^    function getParams() {$/;"	f'}, {'lnum': 44256, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'tags', 'text': 'getParams	app/thirdparty/propel-runtime/lib/query/ModelCriteria.php	/^	public function getParams()$/;"	f'}])
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
badd +1 admin/app/controllers/IndexController.php
badd +0 admin/app/controllers/TemplateTypesController.php
badd +6 admin/app/controllers/UtilitiesController.php
badd +10 admin/app/controllers/ContentTypesController.php
badd +31 admin/app/views/page_admin.tpl
badd +25 admin/app/views/forms/index.tpl
badd +2 admin/app/views/index/index.tpl
badd +0 admin/app/controllers/FormsController.php
badd +8 admin/app/views/content-types/index.tpl
badd +1 admin/js/content-types.js
badd +240 app/models/om/BaseContentType.php
badd +12 app/classes/Processors/AccountCreateProcessor.php
badd +142 app/models/om/BaseArea.php
badd +3 admin/app/views/content-types/new.tpl
badd +0 admin/app/views/forms/new.tpl
badd +0 admin/app/views/content-types/properties-table.tpl
badd +13 admin/app/views/content-types/fields.tpl
badd +0 admin/app/views/forms/fields.tpl
badd +0 admin/js/forms.js
badd +0 app/modules/main/controllers/GroupController.php
silent! argdel *
set lines=64 columns=246
edit admin/app/controllers/UtilitiesController.php
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
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
8wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd w
wincmd w
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 123) / 246)
exe '2resize ' . ((&lines * 6 + 32) / 64)
exe 'vert 2resize ' . ((&columns * 214 + 123) / 246)
exe '3resize ' . ((&lines * 6 + 32) / 64)
exe 'vert 3resize ' . ((&columns * 214 + 123) / 246)
exe '4resize ' . ((&lines * 6 + 32) / 64)
exe 'vert 4resize ' . ((&columns * 214 + 123) / 246)
exe '5resize ' . ((&lines * 6 + 32) / 64)
exe 'vert 5resize ' . ((&columns * 214 + 123) / 246)
exe '6resize ' . ((&lines * 6 + 32) / 64)
exe 'vert 6resize ' . ((&columns * 214 + 123) / 246)
exe '7resize ' . ((&lines * 6 + 32) / 64)
exe 'vert 7resize ' . ((&columns * 214 + 123) / 246)
exe '8resize ' . ((&lines * 6 + 32) / 64)
exe 'vert 8resize ' . ((&columns * 214 + 123) / 246)
exe '9resize ' . ((&lines * 6 + 32) / 64)
exe 'vert 9resize ' . ((&columns * 214 + 123) / 246)
exe '10resize ' . ((&lines * 6 + 32) / 64)
exe 'vert 10resize ' . ((&columns * 214 + 123) / 246)
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
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit admin/app/views/forms/index.tpl
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 9 - ((2 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 020l
wincmd w
argglobal
edit admin/app/views/forms/new.tpl
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 17 - ((1 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 015l
wincmd w
argglobal
edit admin/app/views/forms/fields.tpl
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 7 - ((0 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 013l
wincmd w
argglobal
edit admin/js/forms.js
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 4 - ((0 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 016l
wincmd w
argglobal
edit admin/app/controllers/ContentTypesController.php
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=4
setlocal fml=1
setlocal fdn=10
setlocal fen
5
silent! normal zo
7
silent! normal zo
5
silent! normal zo
let s:l = 37 - ((3 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
37
normal! 01l
wincmd w
argglobal
edit admin/app/controllers/FormsController.php
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=10
setlocal fen
6
silent! normal zo
18
silent! normal zo
23
silent! normal zo
34
silent! normal zo
36
silent! normal zo
34
silent! normal zo
6
silent! normal zo
let s:l = 36 - ((2 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
36
normal! 02l
wincmd w
argglobal
edit app/modules/main/controllers/GroupController.php
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=10
setlocal fen
7
silent! normal zo
74
silent! normal zo
75
silent! normal zo
79
silent! normal zo
82
silent! normal zo
83
silent! normal zo
82
silent! normal zo
79
silent! normal zo
75
silent! normal zo
74
silent! normal zo
123
silent! normal zo
124
silent! normal zo
129
silent! normal zo
129
silent! normal zo
129
silent! normal zo
124
silent! normal zo
123
silent! normal zo
159
silent! normal zo
160
silent! normal zo
161
silent! normal zo
165
silent! normal zo
165
silent! normal zo
166
silent! normal zo
167
silent! normal zo
166
silent! normal zo
165
silent! normal zo
165
silent! normal zo
160
silent! normal zo
159
silent! normal zo
7
silent! normal zo
let s:l = 159 - ((2 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
159
normal! 02l
wincmd w
argglobal
edit admin/app/controllers/TemplateTypesController.php
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=4
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 13 - ((1 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 03l
wincmd w
8wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 123) / 246)
exe '2resize ' . ((&lines * 6 + 32) / 64)
exe 'vert 2resize ' . ((&columns * 214 + 123) / 246)
exe '3resize ' . ((&lines * 6 + 32) / 64)
exe 'vert 3resize ' . ((&columns * 214 + 123) / 246)
exe '4resize ' . ((&lines * 6 + 32) / 64)
exe 'vert 4resize ' . ((&columns * 214 + 123) / 246)
exe '5resize ' . ((&lines * 6 + 32) / 64)
exe 'vert 5resize ' . ((&columns * 214 + 123) / 246)
exe '6resize ' . ((&lines * 6 + 32) / 64)
exe 'vert 6resize ' . ((&columns * 214 + 123) / 246)
exe '7resize ' . ((&lines * 6 + 32) / 64)
exe 'vert 7resize ' . ((&columns * 214 + 123) / 246)
exe '8resize ' . ((&lines * 6 + 32) / 64)
exe 'vert 8resize ' . ((&columns * 214 + 123) / 246)
exe '9resize ' . ((&lines * 6 + 32) / 64)
exe 'vert 9resize ' . ((&columns * 214 + 123) / 246)
exe '10resize ' . ((&lines * 6 + 32) / 64)
exe 'vert 10resize ' . ((&columns * 214 + 123) / 246)
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
1resize 62|vert 1resize 31|2resize 6|vert 2resize 214|3resize 6|vert 3resize 214|4resize 6|vert 4resize 214|5resize 6|vert 5resize 214|6resize 6|vert 6resize 214|7resize 6|vert 7resize 214|8resize 6|vert 8resize 214|9resize 6|vert 9resize 214|10resize 6|vert 10resize 214|
tabnext 1
8wincmd w

" vim: ft=vim ro nowrap smc=128
