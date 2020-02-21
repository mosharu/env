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
"set enc=cp932
"set enc=UTF-8
scriptencoding UTF-8
set fencs=ucs-bom,UTF-8,CP932,SJIS,UTF-16

if has("win32")
	so $VIMRUNTIME/mswin.vim
	unmap <C-A>
	unmap! <C-A>
	set cscopeprg=c:/cygwin64/bin/cscope.exe
	set grepprg=findstr\ /N
	set shell=$COMSPEC\ /F:ON
	set shellcmdflag=/c
	set backupdir =~\vimfiles\backupdir
	set undodir   =~\vimfiles\undodir
	set directory =~\vimfiles\swapdir
    let g:w3m#command ='c:/cygwin/bin/w3m.exe'
	set packpath+=L:\cygwin64\home\user\.vim
	nnoremap <Leader>t :<C-u>terminal ++close ++curwin bash
elseif has("win32unix")
	packadd vimdoc-ja
	packadd vimproc.vim
	"packadd vim-devicons
	packadd vim-fugitive
	packadd ack.vim
	set backupdir =~/.vim/backupdir
	set undodir   =~/.vim/undodir
	set directory =~/.vim/swapdir
    let g:w3m#command ='w3m'
	set mouse=a
	set ttymouse=xterm2
	"set grepprg=ufindstr
else
	set backupdir =~/.vim/backupdir
	set undodir   =~/.vim/undodir
	set directory =~/.vim/swapdir
    let g:w3m#command ='w3m'
	set mouse=a
	set ttymouse=xterm2
	vnoremap <C-C> "+y
	"imap     <C-V> "+gP
	imap     <C-V> <ESC>"+gpa
	vmap     <C-V> "+gp
    cmap     <C-V> <C-R>+
	vnoremap <C-V> "+p
	noremap  <C-Q> <C-V>
endif

" for terminal
if has('termguicolors')
	set termguicolors
else
endif
set t_Co=256

" common
set cscopequickfix=s-,c-,d-,i-,t-,e-
set cursorline
set cryptmethod=blowfish2
set nowrap
set ts=4
set sw=4
set expandtab
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
let c_space_errors=1
let mapleader = ","
set fillchars+=stl::
set wildmode=longest:full,full
set ambiwidth=double
set visualbell
set title
set exrc
set nofixeol
let g:explVertical=1	" Split vertically
let g:explSplitRight=1	" Put new window to the right of the explorer
let g:explStartRight=0	" Put new explorer window to the left of the current window

map <C-PageUp>	  [cz.
map <C-PageDown>  ]cz.
nnoremap <C-Tab>   gt
nnoremap <S-C-Tab> gT
inoremap <silent> jj <ESC>

nnoremap <Leader>s :<C-u>cs f s <C-R><C-W><CR>
"nnoremap <Leader>a :<C-u>cs add .<CR>
nnoremap <Leader>h :<C-u>QuickhlManualAdd! \<<C-R><C-W>\>
nnoremap <silent> <Leader>H :<C-u>QuickhlManualReset<CR>
nnoremap <C-n> :<C-u>cn<CR>
nnoremap <C-p> :<C-u>cp<CR>

" matchit スクリプトを読み込む
so $VIMRUNTIME/macros/matchit.vim
let loaded_matchit = 1

" cscope
if has("cscope")
	set csto=0
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
		cs add cscope.out
	" else add database pointed to by environment
	elseif $CSCOPE_DB != ""
		cs add $CSCOPE_DB
	endif
	set csverb
endif

" added -d option

" https://qiita.com/takaakikasai/items/3d4f8a4867364a46dfa3
" diffのコマンド
"set diffexpr=MyDiff()
"function MyDiff()
"  let opt = ""
"  if &diffopt =~ "iwhite"
"    let opt = opt . "-b "
"  endif
"  silent execute "!git-diff-normal-format " . opt . v:fname_in . " " . v:fname_new . " > " . v:fname_out
"  redraw!
"endfunction
set diffopt=internal,filler,algorithm:histogram,indent-heuristic
"set diffopt=internal,filler,algorithm:patience,indent-heuristic
"set diffopt=internal,filler,algorithm:minimal,indent-heuristic

" ruby
" http://stackoverflow.com/questions/16902317/vim-slow-with-ruby-syntax-highlighting
" この設定にすると遅いのがましになった
set re=1

" aspx整形

function! FormatAspx() range
" %s/>\(<[^\/]\)/>\r\1/g
  let lnum = a:firstline
  while lnum <= a:lastline
    let line = getline(lnum)
    let repl = substitute(line, '>\(<[^\/]\)', '>\n\1', 'g')
    call setline(lnum, repl)
    let lnum = lnum + 1
  endwhile
endf

" ファイル位置を含めてコピーする
function! CopyLocation() range
	call setreg("@", ["// " . @% . ":" . a:firstline] + getline(a:firstline, a:lastline))
endf

map <F9> gF
map <F10> :call CopyLocation()<CR>
map <F11> :call FormatAspx()<CR>

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

" csapprox
	"let g:CSApprox_konsole = 1
	"let g:CSApprox_hook_post = ['hi Normal  ctermbg=NONE', 'hi NonText ctermbg=NONE' ]
	let g:CSApprox_attr_map = { 'italic' : 'underline', 'sp' : 'fg' }

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
	nnoremap <silent> <Leader>p :<C-u>Unite file_rec/git<CR>
	"nnoremap <silent> <Leader>v <Plug>AddComment 
	nnoremap <silent> <Leader>V :<C-u>CheckReview
	autocmd FileType unite call s:unite_my_settings()
	function! s:unite_my_settings()
    call unite#custom_default_action('source/bookmark/directory' , 'vimfiler')
	endfunction

" mru
	let g:neomru#follow_links=1

" codereview
	let g:CodeReviewer_reviewer="TK"
	let g:CodeReviewer_reviewFile=$HOME . "/.cache/review.rev"

" SilverSearcher ag
	" カーソル位置の単語をgrep検索
	nnoremap <silent> <Leader>gg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>
	" grep検索結果の再呼出
	nnoremap <silent> <Leader>g  :<C-u>UniteResume search-buffer<CR>

	" unite grep に ag(The Silver Searcher) を使う
	" pt に変更
	" https://github.com/monochromegane/the_platinum_searcher
	if executable('pt')
	  let g:unite_source_grep_command = 'pt'
	  let g:unite_source_grep_default_opts = '--nogroup --nocolor'
	  let g:unite_source_grep_encoding = 'utf-8'
	  let g:unite_source_grep_recursive_opt = ''
	endif
	"if executable('hwt')
	"  let g:unite_source_grep_command = 'hwt'
	"  let g:unite_source_grep_default_opts = '--nogroup --nocolor'
	"  let g:unite_source_grep_encoding = 'utf-8'
	"  let g:unite_source_grep_recursive_opt = ''
	"endif

" EasyAlign
vmap <Enter> <Plug>(EasyAlign)

" Tagbar
	let g:tagbar_left = 1
	let g:tagbar_autoclose = 1
	nnoremap <silent> <F7> :TagbarToggle<CR>
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
  let g:lightline = {
		\ 'colorscheme': 'darcula',
		\ 'active': {
		\   'left': [ [ 'mode', 'paste' ], [ 'filename' ]],
		\   'right': [ [ 'lineinfo' ], ['percent'], [ 'fileencoding' ] ]
		\ },
		\ 'component_function': {
		\   'readonly': 'LightlineReadonly',
        \   'filetype': 'MyFiletype',
        \   'fileformat': 'MyFileformat',
		\   'filename': 'LightlineFilename',
		\   'fileencoding': 'LightlineFileencoding',
		\   'mode': 'LightlineMode',
		\ },
		\ 'separator': { 'left': '', 'right': '' },
		\ 'subseparator': { 'left': '', 'right': '' }
		\ }

  function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
  endfunction
  
  function! MyFileformat()
    return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
  endfunction

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

	let g:unite_force_overwrite_statusline = 0
	let g:vimfiler_force_overwrite_statusline = 0
	let g:vimshell_force_overwrite_statusline = 0

"" gitgutter
"	if has("win32unix")
"		let g:gitgutter_sign_added              = '+'
"		let g:gitgutter_sign_modified           = 'o'
"		let g:gitgutter_sign_removed            = 'x'
"		let g:gitgutter_sign_removed_first_line = '^'
"		let g:gitgutter_sign_modified_removed   = 'ox'
"		let g:gitgutter_override_sign_column_highlight = 0
"		highlight SignColumn            guibg=BLACK
"		highlight GitGutterAdd          guibg=BLACK guifg=orange
"		highlight GitGutterChange       guibg=BLACK guifg=orange
"		highlight GitGutterDelete       guibg=BLACK guifg=purple
"		highlight GitGutterChangeDelete guibg=BLACK guifg=orange
"	  packadd vim-gitgutter
"	endif

" ack.vim
	let g:ack_autofold_results = 0
	let g:ack_default_options = '--nogroup --nocolor'
	let g:ackprg = "pt"
	nnoremap <leader>a :Ack!<Space>

" gundo
	nnoremap <leader>u :GundoToggle<CR>

" editorconfig
	let g:editorconfig_blacklist = {
	    \ 'filetype': ['git.*', 'fugitive'],
	    \ 'pattern': ['\.un~$']}

" neomru
	if has("unix")
		" パスにmntが入っていると無視されるのでmntを抜く
		let g:neomru#file_mru_ignore_pattern='\~$\|\.\%(o\|exe\|dll\|bak\|zwc\|pyc\|sw[po]\)$\|\%(^\|/\)\.\%(hg\|git\|bzr\|svn\)\%($\|/\)\|^\%(\\\\\|/media/\|/temp/\|/tmp/\|\%(/private\)\=/var/folders/\)\|\%(^\%(fugitive\)://\)\|\%(^\%(term\)://\)'
	endif

" devicons
    let g:webdevicons_enable_unite = 1
    let g:webdevicons_enable_vimfiler = 1

set tgc
set background=dark
colo gruvbox
highlight CursorLine cterm=none
"set background=light
"colo eclipse

" When using `dd` in the quickfix list, remove the item from the quickfix list.
function! RemoveQFItem()
  let curqfidx = line('.') - 1
  let qfall = getqflist()
  call remove(qfall, curqfidx)
  call setqflist(qfall, 'r')
  execute curqfidx + 1 . "cfirst"
  :copen
endfunction
:command! RemoveQFItem :call RemoveQFItem()
" Use map <buffer> to only map dd in the quickfix window. Requires +localmap
autocmd FileType qf map <buffer> dd :RemoveQFItem<cr>

au VimEnter * if filereadable("init.vim") | source init.vim | endif

au FileType cs         setlocal sw=4 ts=4 et
au FileType html       setlocal sw=2 ts=2 et
au FileType javascript setlocal sw=2 ts=2 et
au FileType json       setlocal sw=2 ts=2 et
au FileType ruby       setlocal sw=2 ts=2 et
au FileType ts         setlocal sw=2 ts=2 et
