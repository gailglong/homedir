"Trying stuff
set nocompatible
set textwidth=79
set wrapmargin=79
set wrap
set linebreak
set nolist
"set wildmode=longest,list
"End Trying stuff
set wildmenu
set wildmode=longest:full
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
set cindent
set expandtab
set tabstop=4
set shiftwidth=4
set showmatch
set ignorecase
set hlsearch
set incsearch
set background=dark
set wmh=0
set backspace=indent,eol,start
set ruler
set title
" Kill the freaking bell
set vb t_vb=
set foldmethod=syntax
set formatoptions-=cro
set viminfo='10000,f1,<1000
" set et
set lazyredraw          " don't redraw during macros


set fillchars=vert:\ ,stl:\ ,stlnc:\  "no funny fill chars in splitters

set whichwrap=<,>,h,l   " let cursors movment wrap to next/previous line
set shortmess=atI       " always show short messages
set hidden              " Allow hiding dirty buffers
set list listchars=tab:»·,trail:¶ " show tabs and trailing spaces
set term=builtin_xterm  " use xterm keyboard mappings


if &bg == "dark"
	highlight MatchParen ctermbg=darkblue guibg=blue
endif

if has('mouse')
	set mouse=a
endif

syntax on

"unless we are doing a diff
if &diff
	syntax off
endif

"syntax highlight shell scripts as per POSIX,
"not the original Bourne shell which very few use
let g:is_posix = 1

"Mark trailing whitespace and spaces before tabs
highlight RedundantSpaces term=standout ctermbg=red guibg=red
match RedundantSpaces /\s\+$\| \+\ze\t/ "\ze sets end of match so only spaces highlighted
set listchars=tab:>-,trail:.,extends:>

filetype on
filetype plugin on
filetype indent on

" run python scripts
map <F2>	:w\|!python %
" run php scripts
map <F3>	:w\|!php %
" run make in the current directory
map <F4>	:w\|!runme %
map <F5>	:w\|!make
map <F11>	:w\|!php -l % 

" Set paste indent control
nnoremap <F6> :set invpaste paste?<Enter>

imap <F6> <C-O><F6>
set pastetoggle=<F6>
imap <F12> <C-x><C-o>
" replace 4 spaces with a tab
" map <F7>   :%s/ \{4}/	/g<CR>


" Use these to keep split windows equal
set equalalways
map <C-J> <C-W>j<C-W><bar>
map <C-K> <C-W>k<C-W><bar>
map <C-H> <C-W><C-W>
map <C-L> <C-W><C-W>

" Resize split windows
nmap <C-P> <C-W>p<C-W>_
nmap <C-=> <C-W>=<C-W>_
map <C-+> <C-W>+<C-W><bar>
map <C--> <C-W>-<C-W><bar>

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" html comments
imap htmlb <!--   --><Esc>4hi
imap htmlc <!-- <Esc>$a --><Esc>

" html comment a line
nmap ., ^i<!-- <Esc>$a --><Esc>
" html uncomment a line
nmap ,. :s:<!--\s\+\\|\s\+-->::g<CR>

" tlist plugin trigger.  Shows ctags style menu
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Use_SingleClick = 1

" ab mbr ."<br>\n"
fixdel

" Add a simple html file layout.  Should put this into snippets
ab mkhtml <html><head><script type="text/javascript"></script><style type="text/css"></style></head><body></body></html>
" Add a simple html table layout.  Should put this into snippets
ab mktable <table><tbody><tr><td></td></tr></tbody></table>

" Fix some misspellings
ab sefl self
ab sfel self

" fix backspace and set a default colorscheme
:imap ^? 
:colo northland

" Set some basic colorscheme preference by vile type
au BufRead,BufNewFile *.dat set filetype=qbase
autocmd! BufNewFile,BufReadPre,FileReadPre *.mako :colo inkpot
" autocmd! BufNewFile,BufReadPre,FileReadPre *.py :colo murphy
autocmd! BufNewFile,BufReadPre,FileReadPre *.py :colo herald
autocmd! BufNewFile,BufReadPre,FileReadPre *.php :colo blacksea

" I don't remember what this does!
au FileType php set omnifunc=phpcomplete#CompletePHP

" PHP Generated Code Highlights (HTML & SQL)											  
let php_sql_query=1
let php_htmlInStrings=1

" Stuff to try.  I got this stuff from the internet and am giving it a whirl
""""""""""""""""""""""""""""""
" => Statusline
""""""""""""""""""""""""""""""
" Always hide the statusline
set laststatus=2

" Format the statusline
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c

function! CurDir()
	let curdir = substitute(getcwd(), '/home/gail/', "~/", "g")
	return curdir
endfunction

function! HasPaste()
	if &paste
		return 'PASTE MODE  '
	else
		return ''
	endif
endfunction

""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <c-t> AJS.log();<esc>hi
au FileType javascript imap <c-a> alert();<esc>hi

au FileType javascript inoremap <buffer> $r return
au FileType javascript inoremap <buffer> $f //--- PH ----------------------------------------------<esc>FP2xi

function! JsonFmt()
	:%s:^\(\w\{1,}\):	'\1':
		:%s:\:\(.*\)$:\:'\1',:
endfunction


function! JavaScriptFold()
	setl foldmethod=syntax
	setl foldlevelstart=1
	syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

	function! FoldText()
	return substitute(getline(v:foldstart), '{.*', '{...}', '')
	endfunction
	setl foldtext=FoldText()
endfunction

set nolazyredraw "Don't redraw while executing macros 
set nobackup
set nowb
set noswapfile
set si

"Persistent undo
try
	if MySys() == "windows"
	  set undodir=C:\Windows\Temp
	else
	  set undodir=~/.vim_runtime/undodir
	endif

	set undofile
catch
endtry

call pathogen#helptags()
call pathogen#infect()

"""" Brian's vim stuff:

setlocal shiftwidth=2
setlocal tabstop=2
setlocal softtabstop=2
setlocal expandtab
setlocal textwidth=78
setlocal cino=>1s,n-1s,:1s,=1s,(2s,+2s
setlocal cink=0{,0},:,!^F,!<Tab>,o,O,e
"setlocal formatoptions=qrowct

" use my php compiler script
compiler php

let php_sql_query=1
let php_baselib=1
let php_noShortTags=1
"let php_folding=1

" tweaks for php indenter
let PHP_removeCRwhenUnix=1

imap <C-o> <Esc>:set paste<CR>:exe PhpDoc()<CR>:set nopaste<CR>i
nmap <Leader>pd :exe PhpDoc()<CR>
let g:pdv_cfg_Author = "Bryan Davis <bpd@keynetics.com>"
let g:pdv_cfg_Copyright = "2007 Keynetics Inc."
let g:pdv_cfg_License = ""
let g:pdv_cfg_php4always = 0
let g:pdv_cfg_php4guess = 0

" path for find commands (cwd + projects dir + pear)
" TODO: would be nice if this stayed in the same project (need cdp inside vim)
setlocal path=.,/usr/share/php
setlocal dictionary-=~/.vim/data/phpfunctions.txt
setlocal complete-=k complete+=k

" {{{ Autocompletion using the TAB key

" This function determines, wether we are on the start of the line text (then
" tab indents) or if we want to try autocompletion
func! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

" Remap the tab key to select action with InsertTabWrapper
"inoremap <tab> <c-r>=InsertTabWrapper()<cr>

" }}} Autocompletion using the TAB key

" {{{ Alignment
if exists("*PhpAlign")
    finish
endif
func! PhpAlign() range
    let l:paste = &g:paste
    let &g:paste = 0

    let l:line        = a:firstline
    let l:endline     = a:lastline
    let l:maxlength = 0
    while l:line <= l:endline
        if getline (l:line) =~ '^\s*\/\/.*$'
            let l:line = l:line + 1
            continue
        endif
        let l:index = substitute (getline (l:line), '^\s*\(.\{-\}\)\s*=>\{0,1\}.*$', '\1', "") 
        let l:indexlength = strlen (l:index)
        let l:maxlength = l:indexlength > l:maxlength ? l:indexlength : l:maxlength
        let l:line = l:line + 1
    endwhile

    let l:line = a:firstline
    let l:format = "%s%-" . l:maxlength . "s %s %s"

    while l:line <= l:endline
        if getline (l:line) =~ '^\s*\/\/.*$'
            let l:line = l:line + 1
            continue
        endif
        let l:linestart = substitute (getline (l:line), '^\(\s*\).*', '\1', "")
        let l:linekey   = substitute (getline (l:line), '^\s*\(.\{-\}\) *=>\{0,1\}.*$', '\1', "")
        let l:linesep   = substitute (getline (l:line), '^\s*.* *\(=>\{0,1\}\).*$', '\1', "")
        let l:linevalue = substitute (getline (l:line), '^\s*.* *=>\{0,1\}\s*\(.*\)$', '\1', "")

        let l:newline = printf (l:format, l:linestart, l:linekey, l:linesep, l:linevalue)
        call setline (l:line, l:newline)
        let l:line = l:line + 1
    endwhile
    let &g:paste = l:paste
endfunc

" }}}   

" {{{ (Un-)comment
if exists("*PhpUnComment")
    finish
endif
func! PhpUnComment() range
    let l:paste = &g:paste
    let &g:paste = 0

    let l:line        = a:firstline
    let l:endline     = a:lastline

    while l:line <= l:endline
        if getline (l:line) =~ '^\s*\/\/.*$'
            let l:newline = substitute (getline (l:line), '^\(\s*\)\/\/ \(.*\).*$', '\1\2', '')
        else
            let l:newline = substitute (getline (l:line), '^\(\s*\)\(.*\)$', '\1// \2', '')
        endif
        call setline (l:line, l:newline)
        let l:line = l:line + 1
    endwhile

    let &g:paste = l:paste
endfunc

" }}}

