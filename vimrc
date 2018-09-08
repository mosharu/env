"NeoBundle
	"NeoBundle 'Shougo/neomru.vim.git'
	"NeoBundle 'Shougo/unite-outline.git'
	"NeoBundle 'Shougo/unite.vim.git'
	"NeoBundle 'Shougo/vimfiler.git'
	"NeoBundle 'Shougo/vimproc.git'
	"NeoBundle 'Shougo/vimshell.git'
	"NeoBundle 'digitaltoad/vim-jade.git'
	"NeoBundle 'fuenor/im_control.vim.git'
	"NeoBundle 'kchmck/vim-coffee-script.git'
	"NeoBundle 'kshenoy/vim-signature.git'
	"NeoBundle 'majutsushi/tagbar'
	"NeoBundle 'slim-template/vim-slim.git'
	"NeoBundle 'itchyny/lightline.vim.git'
	"NeoBundle 'thinca/vim-ref.git'
	"NeoBundle 'tpope/vim-fugitive.git'
	"NeoBundle 'vim-jp/vimdoc-ja.git'
	"NeoBundle 'vim-scripts/Align.git'
	"NeoBundle 'vim-scripts/CodeReviewer.vim.git'
	"NeoBundle 'vim-scripts/vcscommand.vim.git'
	"NeoBundle 'luochen1990/rainbow'
	"NeoBundle 'junegunn/vim-easy-align.git'
	"NeoBundle 'rking/ag.vim'
	"NeoBundle 'hail2u/vim-css3-syntax.git'
	"NeoBundle 'othree/html5.vim'
	"NeoBundle 'pangloss/vim-javascript'
	""NeoBundle 'mxw/vim-jsx'
	"call neobundle#local("~/.vim/bundle",
	"	\   {}, ['CSApprox', 'ScrollColors', 'coffeetags', 'vim-coffee-script'])
	"https://github.com/t9md/vim-quickhl.git
	"devicons

so $VIMRUNTIME/vimrc_example.vim
if has("win32")
	so $VIMRUNTIME/mswin.vim
	unmap <C-A>
	unmap! <C-A>
	set cscopeprg=c:/cygwin64/bin/cscope.exe
	set grepprg=findstr\ /N
	set shell=$COMSPEC\ /F:ON
	set shellcmdflag=/c
	set backupdir =~/vimfiles/backupdir
	set undodir   =~/vimfiles/undodir
	set directory =~/vimfiles/swapdir
    let g:w3m#command ='c:/cygwin/bin/w3m.exe'
	set packpath+=L:\cygwin64\home\user\.vim
elseif has("win32unix")
	packadd vimdoc-ja
	packadd vimproc.vim
	packadd vim-devicons
	packadd vim-fugitive
	packadd ack.vim
	set backupdir =~/.vim/backupdir
	set undodir   =~/.vim/undodir
	set directory =~/.vim/swapdir
    let g:w3m#command ='w3m'
else
	set backupdir =~/.vim/backupdir
	set undodir   =~/.vim/undodir
	set directory =~/.vim/swapdir
    let g:w3m#command ='w3m'
endif

" for terminal
if has('termguicolors')
	set termguicolors
else
endif
set t_Co=256

" common
colo neon
set cscopequickfix=s-,c-,d-,i-,t-,e-
set fencs=ucs-bom,UTF-8,Shift_JIS,UTF-16
set cursorline
set cryptmethod=blowfish2
set nowrap
set ts=4
set sw=4
set smartindent
set hlsearch
set incsearch
set ic
set cscopetag
set listchars=tab:>-
set makeprg=rake
set wildignorecase
set fileignorecase
set matchpairs+=<:>
set showcmd
set undofile
set hidden
set cursorline
set background=dark
let c_space_errors=1
let mapleader = ","
set fillchars+=stl::
set wildmode=longest:full,full
set ambiwidth=double
set fileencodings=utf-8,euc-jp,sjis,iso-2022-jp
set visualbell
let g:explVertical=1	" Split vertically
let g:explSplitRight=1	" Put new window to the right of the explorer
let g:explStartRight=0	" Put new explorer window to the left of the current window

map <C-PageUp>	  [cz.
map <C-PageDown>  ]cz.
map <C-Tab>		gt
map <S-C-Tab>	gT

nnoremap <Leader>s :<C-u>cs f s <C-R><C-W><CR>
nnoremap <Leader>a :<C-u>cs add .<CR>
nnoremap <Leader>h :<C-u>QuickhlManualAdd! \<<C-R><C-W>\>
nnoremap <silent> <Leader>H :<C-u>QuickhlManualReset<CR>
:nnoremap <C-n> :<C-u>cn<CR>
:nnoremap <C-p> :<C-u>cp<CR>

" matchit スクリプトを読み込む
so $VIMRUNTIME/macros/matchit.vim
let loaded_matchit = 1

" filetype
au BufRead,BufNewFile,BufReadPre *.coffee    setf coffee
au BufRead,BufNewFile,BufReadPre *.slim      setf slim
au BufRead,BufNewFile,BufReadPre *.spacemacs setf lisp
au filetype html       setlocal ts=2 sts=2 sw=2 et
au filetype haml       setlocal ts=2 sw=2 sts=2 et
au filetype coffee     setlocal ts=2 sw=2 sts=2 et
au filetype ruby       setlocal ts=2 sw=2 sts=2 et
au filetype slim       setlocal ts=4 sw=2 sts=2 et
au filetype javascript setlocal ts=2 sw=2 sts=2 et
au filetype xml        setlocal ts=4 sw=4 sts=4 et

" added -d option
set diffexpr=MyDiff()
function! MyDiff()
   let opt = ""
   if &diffopt =~ "icase"
	 let opt = opt . "-i "
   endif
   if &diffopt =~ "iwhite"
	 let opt = opt . "-b "
   endif
   silent execute "!diff -d -a --binary " . opt . v:fname_in . " " . v:fname_new .
	\  " > " . v:fname_out
endfunction

" ruby
" http://stackoverflow.com/questions/16902317/vim-slow-with-ruby-syntax-highlighting
" この設定にすると遅いのがましになった
set re=1

" TagList
nnoremap <silent> <F8> :TlistToggle<CR>

" CoffeeTags設定
	if has("win32")
		let g:tagbar_type_coffee = {
			  \ 'ctagsbin' : 'ruby -EUTF-8 c:/cygwin/bin/coffeetags',
			  \ 'ctagsargs' : '',
			  \ 'kinds' : [
			  \ 'f:functions',
			  \ 'o:object',
			  \ ],
			  \ 'sro' : ".",
			  \ 'kind2scope' : {
			  \ 'f' : 'object',
			  \ 'o' : 'object',
			  \ }
			  \ }
	else
		let g:tagbar_type_coffee = {
			  \ 'ctagsbin' : 'coffeetags',
			  \ 'ctagsargs' : '',
			  \ 'kinds' : [
			  \ 'f:functions',
			  \ 'o:object',
			  \ ],
			  \ 'sro' : ".",
			  \ 'kind2scope' : {
			  \ 'f' : 'object',
			  \ 'o' : 'object',
			  \ }
			  \ }
	endif
"endif

" csapprox
	let g:CSApprox_hook_post = ['hi Normal  ctermbg=NONE',
							\ 'hi NonText ctermbg=NONE' ]

" VimFiler
let g:vimfiler_as_default_explorer = 1

" unite
	let g:unite_enable_start_insert = 1
	let g:unite_enable_short_source_names = 1
	nnoremap <silent> <Leader>b :<C-u>Unite buffer<CR>
	nnoremap <silent> <Leader>c :<C-u>UniteWithBufferDir file<CR>
	nnoremap <silent> <Leader>d :<C-u>Unite -buffer-name=dir -default-action=lcd directory_mru<CR>
	nnoremap <silent> <Leader>f :<C-u>UniteWithCurrentDir file<CR>
	nnoremap <silent> <Leader>k :<C-u>Unite -buffer-name=files bookmark<CR>
	nnoremap <silent> <Leader>o :<C-u>Unite outline<CR>
	nnoremap <silent> <Leader>r :<C-u>Unite neomru/file<CR>
	nnoremap <silent> <Leader>s :<C-u>Unite source<CR>

" codereview
	let g:CodeReviewer_reviewer="TK"
	let g:CodeReviewer_reviewFile=$HOME . "/review.rev"

" SilverSearcher ag
	" カーソル位置の単語をgrep検索
	nnoremap <silent> <Leader>gg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>
	" grep検索結果の再呼出
	nnoremap <silent> <Leader>g  :<C-u>UniteResume search-buffer<CR>

	" unite grep に ag(The Silver Searcher) を使う
	if executable('ag')
	  let g:unite_source_grep_command = 'ag'
	  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
	  let g:unite_source_grep_recursive_opt = ''
	endif

" EasyAlign
vmap <Enter> <Plug>(EasyAlign)

" Tagbar
	let g:tagbar_left = 1
	let g:tagbar_autoclose = 1
	nnoremap <silent> <F9> :TagbarToggle<CR>
	let g:tagbar_type_javascript = {
		\ 'ctagstype' : 'js',
		\ 'ctagsbin' : 'ctags',
		\ 'kinds'     : [
			\ 'a:array',
			\ 'b:boolean',
			\ 'f:function',
			\ 'n:number',
			\ 'o:object',
			\ 's:string',
			\ 'v:variable',
			\ 'r:regex',
		\ ],
		\ 'scope2kind' : {
			\ 'array'    : 'a',
			\ 'boolean'  : 'b',
			\ 'function' : 'f',
			\ 'object'   : 'o',
			\ 'string'   : 's',
			\ 'variable' : 'v',
			\ 'regex'    : 'r',
		\ },
	\ }

" vim-jsx
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" quick highlight
  let g:quickhl_manual_colors = [
        \ "gui=bold ctermfg=7  ctermbg=160 guifg=#eeeeee guibg=#d70000",
        \ "gui=bold ctermfg=7  ctermbg=166 guifg=#eeeeee guibg=#d75f00",
        \ "gui=bold ctermfg=16   ctermbg=172 guifg=#000000 guibg=#d78700",
        \ "gui=bold ctermfg=16   ctermbg=178 guifg=#000000 guibg=#dfaf00",
        \ "gui=bold ctermfg=16   ctermbg=184 guifg=#000000 guibg=#dfdf00",
        \ "gui=bold ctermfg=16   ctermbg=190 guifg=#000000 guibg=#dfff00",
        \ "gui=bold ctermfg=16   ctermbg=226 guifg=#000000 guibg=#ffff00",
        \ "gui=bold ctermfg=16   ctermbg=220 guifg=#000000 guibg=#ffdf00",
        \ "gui=bold ctermfg=16   ctermbg=214 guifg=#000000 guibg=#ffaf00",
        \ "gui=bold ctermfg=16   ctermbg=208 guifg=#000000 guibg=#ff8700",
        \ "gui=bold ctermfg=7  ctermbg=202 guifg=#eeeeee guibg=#ff5f00",
        \ "gui=bold ctermfg=7  ctermbg=196 guifg=#eeeeee guibg=#ff0000",
        \ "gui=bold ctermfg=7  ctermbg=161 guifg=#eeeeee guibg=#d7005f",
        \ "gui=bold ctermfg=7  ctermbg=167 guifg=#eeeeee guibg=#d75f5f",
        \ "gui=bold ctermfg=16   ctermbg=173 guifg=#000000 guibg=#d7875f",
        \ "gui=bold ctermfg=16   ctermbg=179 guifg=#000000 guibg=#dfaf5f",
        \ "gui=bold ctermfg=16   ctermbg=185 guifg=#000000 guibg=#dfdf5f",
        \ "gui=bold ctermfg=16   ctermbg=191 guifg=#000000 guibg=#dfff5f",
        \ "gui=bold ctermfg=16   ctermbg=227 guifg=#000000 guibg=#ffff5f",
        \ "gui=bold ctermfg=16   ctermbg=221 guifg=#000000 guibg=#ffdf5f",
        \ "gui=bold ctermfg=16   ctermbg=215 guifg=#000000 guibg=#ffaf5f",
        \ "gui=bold ctermfg=16   ctermbg=209 guifg=#000000 guibg=#ff875f",
        \ "gui=bold ctermfg=7  ctermbg=203 guifg=#eeeeee guibg=#ff5f5f",
        \ "gui=bold ctermfg=7  ctermbg=197 guifg=#eeeeee guibg=#ff005f",
        \ "gui=bold ctermfg=7  ctermbg=162 guifg=#eeeeee guibg=#d70087",
        \ "gui=bold ctermfg=7  ctermbg=168 guifg=#eeeeee guibg=#d75f87",
        \ "gui=bold ctermfg=16   ctermbg=174 guifg=#000000 guibg=#d78787",
        \ "gui=bold ctermfg=16   ctermbg=180 guifg=#000000 guibg=#dfaf87",
        \ "gui=bold ctermfg=16   ctermbg=186 guifg=#000000 guibg=#dfdf87",
        \ "gui=bold ctermfg=16   ctermbg=192 guifg=#000000 guibg=#dfff87",
        \ "gui=bold ctermfg=16   ctermbg=228 guifg=#000000 guibg=#ffff87",
        \ "gui=bold ctermfg=16   ctermbg=222 guifg=#000000 guibg=#ffdf87",
        \ "gui=bold ctermfg=16   ctermbg=216 guifg=#000000 guibg=#ffaf87",
        \ "gui=bold ctermfg=16   ctermbg=210 guifg=#000000 guibg=#ff8787",
        \ "gui=bold ctermfg=7  ctermbg=204 guifg=#eeeeee guibg=#ff5f87",
        \ "gui=bold ctermfg=7  ctermbg=198 guifg=#eeeeee guibg=#ff0087",
        \ "gui=bold ctermfg=7  ctermbg=163 guifg=#eeeeee guibg=#d700af",
        \ "gui=bold ctermfg=7  ctermbg=169 guifg=#eeeeee guibg=#d75faf",
        \ "gui=bold ctermfg=16   ctermbg=175 guifg=#000000 guibg=#d787af",
        \ "gui=bold ctermfg=16   ctermbg=181 guifg=#000000 guibg=#dfafaf",
        \ "gui=bold ctermfg=16   ctermbg=187 guifg=#000000 guibg=#dfdfaf",
        \ "gui=bold ctermfg=16   ctermbg=193 guifg=#000000 guibg=#dfffaf",
        \ "gui=bold ctermfg=16   ctermbg=229 guifg=#000000 guibg=#ffffaf",
        \ "gui=bold ctermfg=16   ctermbg=223 guifg=#000000 guibg=#ffdfaf",
        \ "gui=bold ctermfg=16   ctermbg=217 guifg=#000000 guibg=#ffafaf",
        \ "gui=bold ctermfg=16   ctermbg=211 guifg=#000000 guibg=#ff87af",
        \ "gui=bold ctermfg=7  ctermbg=205 guifg=#eeeeee guibg=#ff5faf",
        \ "gui=bold ctermfg=7  ctermbg=199 guifg=#eeeeee guibg=#ff00af",
        \ "gui=bold ctermfg=7  ctermbg=164 guifg=#eeeeee guibg=#d700d7",
        \ "gui=bold ctermfg=7  ctermbg=170 guifg=#eeeeee guibg=#d75fd7",
        \ "gui=bold ctermfg=16   ctermbg=176 guifg=#000000 guibg=#d787d7",
        \ "gui=bold ctermfg=16   ctermbg=182 guifg=#000000 guibg=#dfafdf",
        \ "gui=bold ctermfg=16   ctermbg=188 guifg=#000000 guibg=#dfdfdf",
        \ "gui=bold ctermfg=16   ctermbg=194 guifg=#000000 guibg=#dfffdf",
        \ "gui=bold ctermfg=16   ctermbg=230 guifg=#000000 guibg=#ffffdf",
        \ "gui=bold ctermfg=16   ctermbg=224 guifg=#000000 guibg=#ffdfdf",
        \ "gui=bold ctermfg=16   ctermbg=218 guifg=#000000 guibg=#ffafdf",
        \ "gui=bold ctermfg=16   ctermbg=212 guifg=#000000 guibg=#ff87df",
        \ "gui=bold ctermfg=7  ctermbg=206 guifg=#eeeeee guibg=#ff5fdf",
        \ "gui=bold ctermfg=7  ctermbg=200 guifg=#eeeeee guibg=#ff00df",
        \ "gui=bold ctermfg=7  ctermbg=165 guifg=#eeeeee guibg=#d700ff",
        \ "gui=bold ctermfg=7  ctermbg=171 guifg=#eeeeee guibg=#d75fff",
        \ "gui=bold ctermfg=16   ctermbg=177 guifg=#000000 guibg=#d787ff",
        \ "gui=bold ctermfg=16   ctermbg=183 guifg=#000000 guibg=#dfafff",
        \ "gui=bold ctermfg=16   ctermbg=189 guifg=#000000 guibg=#dfdfff",
        \ "gui=bold ctermfg=16   ctermbg=195 guifg=#000000 guibg=#dfffff",
        \ "gui=bold ctermfg=16   ctermbg=231 guifg=#000000 guibg=#ffffff",
        \ "gui=bold ctermfg=16   ctermbg=225 guifg=#000000 guibg=#ffdfff",
        \ "gui=bold ctermfg=16   ctermbg=219 guifg=#000000 guibg=#ffafff",
        \ "gui=bold ctermfg=16   ctermbg=213 guifg=#000000 guibg=#ff87ff",
        \ "gui=bold ctermfg=7  ctermbg=207 guifg=#eeeeee guibg=#ff5fff",
        \ "gui=bold ctermfg=7  ctermbg=201 guifg=#eeeeee guibg=#ff00ff",
        \ ]

" rainbow
let g:rainbow_active = 1

" lightline
	set laststatus=2
    if !has("win32")
	  let g:lightline = {
	        \ 'colorscheme': 'darcula',
	        \ 'active': {
	        \   'left': [ [ 'mode', 'paste' ], [ 'filename' ]],
	        \   'right': [ [ 'lineinfo' ], ['percent'], [ 'fileencoding' ] ]
	        \ },
	        \ 'component_function': {
	        \   'readonly': 'LightlineReadonly',
	        \   'filename': 'LightlineFilename',
	        \   'fileencoding': 'LightlineFileencoding',
	        \   'mode': 'LightlineMode',
	        \ },
	        \ 'separator': { 'left': '', 'right': '' },
	        \ 'subseparator': { 'left': '', 'right': '' }
	        \ }

	  function! LightlineModified()
	    return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
	  endfunction

	  function! LightlineReadonly()
	    return &ft !~? 'help' && &readonly ? '' : ''
	  endfunction

	  function! LightlineFilename()
	    let fname = expand('%:t')
	    return fname == '__Tagbar__' ? g:lightline.fname :
	          \ fname =~ '__Gundo\|NERD_tree' ? '' :
	          \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
	          \ &ft == 'unite' ? unite#get_status_string() :
	          \ &ft == 'vimshell' ? vimshell#get_status_string() :
	          \ ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
	          \ ('' != fname ? fname : '[No Name]') .
	          \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
	  endfunction

	  function! LightlineFileencoding()
	    return winwidth(0) > 70 ? ((&fenc !=# '' ? &fenc : &enc) . WebDevIconsGetFileFormatSymbol()) : ''
	  endfunction

	  function! LightlineMode()
	    let fname = expand('%:t')
	    return fname == '__Tagbar__' ? 'Tagbar' :
	          \ fname == '__Gundo__' ? 'Gundo' :
	          \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
	          \ fname =~ 'NERD_tree' ? 'NERDTree' :
	          \ &ft == 'unite' ? 'Unite' :
	          \ &ft == 'vimfiler' ? 'VimFiler' :
	          \ &ft == 'vimshell' ? 'VimShell' :
	          \ winwidth(0) > 60 ? lightline#mode() : ''
	  endfunction

	  let g:tagbar_status_func = 'TagbarStatusFunc'

	  function! TagbarStatusFunc(current, sort, fname, ...) abort
	      let g:lightline.fname = a:fname
	    return lightline#statusline(0)
	  endfunction
	endif

	let g:unite_force_overwrite_statusline = 0
	let g:vimfiler_force_overwrite_statusline = 0
	let g:vimshell_force_overwrite_statusline = 0

" gitgutter
	if has("win32unix")
		let g:gitgutter_sign_added              = '+'
		let g:gitgutter_sign_modified           = 'o'
		let g:gitgutter_sign_removed            = 'x'
		let g:gitgutter_sign_removed_first_line = '^'
		let g:gitgutter_sign_modified_removed   = 'ox'
		let g:gitgutter_override_sign_column_highlight = 0
		highlight SignColumn            guibg=BLACK
		highlight GitGutterAdd          guibg=BLACK guifg=orange
		highlight GitGutterChange       guibg=BLACK guifg=orange
		highlight GitGutterDelete       guibg=BLACK guifg=purple
		highlight GitGutterChangeDelete guibg=BLACK guifg=orange
	  packadd vim-gitgutter
	endif

" ack.vim
	let g:ackprg = "ag --vimgrep"
	let g:ack_autofold_results = 0
	nnoremap ,a :Ack!<Space>

" gundo
	nnoremap ,u :GundoToggle<CR>

