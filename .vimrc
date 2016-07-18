" This is the .vimrc file from FangminChen@outlook.com 
" The commands in this are executed when the GUI is started.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2001 Sep 02
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.gvimrc
"	      for Amiga:  s:.gvimrc
"  for MS-DOS and Win32:  $VIM\_gvimrc
"	    for OpenVMS:  sys$login:.gvimrc

" Make external commands work through a pipe instead of a pseudo-tty
"set noguipty

" set the X11 font to use
" set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1

set ch=2		" Make command line two lines high

set mousehide		" Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Only do this for Vim version 5.0 and later.
if version >= 500

  " I like highlighting strings inside C comments
  let c_comment_strings=1

  " Switch on syntax highlighting if it wasn't on yet.
  if !exists("syntax_on")
    syntax on
  endif

  " Switch on search pattern highlighting.
  set hlsearch

  " For Win32 version, have "K" lookup the keyword in a help file
  "if has("win32")
  "  let winhelpfile='windows.hlp'
  "  map K :execute "!start winhlp32 -k <cword> " . winhelpfile <CR>
  "endif

  " Set nice colors
  " background for normal text is light grey
  " Text below the last line is darker grey
  " Cursor is green, Cyan when ":lmap" mappings are active
  " Constants are not underlined but have a slightly lighter background
  highlight Normal guibg=grey90
  highlight Cursor guibg=Green guifg=NONE
  highlight lCursor guibg=Cyan guifg=NONE
  highlight NonText guibg=grey80
  highlight Constant gui=NONE guibg=grey95
  highlight Special gui=NONE guibg=grey95


	" Description: The below settings are for C/C++ development, but useful also for other things.
	"
	 
	" set UTF-8 encoding
	set enc=utf-8
	set fenc=utf-8
	set termencoding=utf-8

    " show line number
    set nu

	" disable vi compatibility (emulation of old bugs)
	set nocompatible

	" use indentation of previous line
	set autoindent

	" use intelligent indentation for C
	set smartindent

	" More powerful backspacing
	set backspace=indent,eol,start

	" show file in titlebar
	set title

	" configure tabwidth and insert spaces instead of tabs
	set expandtab           " expand tabs to spaces
	set tabstop=4           " tab width is 4 spaces
	set shiftwidth=4        " indent also with 4 spaces

	" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
	set textwidth=120

	" enable filetype dectection and ft specific plugin/indent
	filetype plugin indent on

	" turn syntax highlighting on
	set t_Co=256
	syntax on

	" search
	set incsearch
	set ignorecase
	set smartcase

	" turn line numbers on
	"set number

	" highlight matching braces
	set showmatch

	" intelligent comments
	set comments=sl:/*,mb:\ *,elx:\ */

	" Enable omni completion.
	autocmd FileType markdown setlocal omnifunc=htmlcomplete#CompleteTags
	autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
	autocmd FileType c setlocal omnifunc=ccomplete#Complete
	if !exists('g:neocomplcache_omni_patterns')
	   let g:neocomplcache_omni_patterns = {}
	endif


endif
