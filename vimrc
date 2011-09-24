
"{{{Auto Commands

autocmd VimEnter * set vb t_vb=

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

set autochdir

" replace tabs with spaces
autocmd BufRead,BufWrite * if ! &bin | silent! %retab | endif

" Restore cursor position to where it was before
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

"}}}

"{{{Misc Settings

set viminfo='10,\"100,:20,%,n~/.viminfo

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
" Necessary  for lots of cool vim things
set nocompatible

" This shows what you are typing as a command.  I love this!
set showcmd

" Needed for Syntax Highlighting and stuff
filetype on
filetype plugin on
syntax enable

" Who doesn't like autoindent?
set autoindent

" Spaces are better than a tab character
set expandtab

" Who wants an 8 character tab?  Not me!
set sw=3
set ts=3

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

" Enable mouse support in console
set mouse=a

" Got backspace?
set backspace=2

" Line Numbers PWN!
set number

" Ignoring case is a fun trick
set ignorecase

" And so is Artificial Intelligence!
set smartcase

" This is totally awesome - remap jj to escape in insert mode.  You'll never type jj anyway, so it's great!
inoremap jj <Esc>

nnoremap JJJJ <Nop>

" Incremental searching is sexy
set incsearch

" Highlight things that we find with the search
set hlsearch

" Since I use Linux, I want this
let g:clipbrdDefaultReg = '+'

" allow selection of nothing
set virtualedit=block
" }}}

"{{{Look and Feel

" Favorite Color Scheme
colorscheme inkpot

if has("gui_running")
   " Remove Toolbar
   set guioptions=
   if has('win32')
      set guifont=Consolas:h8
   else
      set guifont=Terminus\ 8
   endif
endif

"Status line gnarliness
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}\ [%l,%v][%p%%]

" }}}

"{{{ Mappings

" Open NERDTree <F2>
nnoremap <silent> <F2> :NERDTreeToggle<CR>

" Workaround to repeat commands <F3>
nnoremap <silent> <F3> :let @@ = @: <Bar> exe @@<CR>

" Paste Mode!  Dang! <F10>
nnoremap <silent> <F10> :call Paste_on_off()<CR>
set pastetoggle=<F10>

" Edit vimrc \ev
nnoremap <silent> <Leader>ev :tabnew<CR>:e ~/.vimrc<CR>

" Up and down are more logical with g..
nnoremap <silent> k gk
nnoremap <silent> j gj

" Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
map N Nzz
map n nzz

noremap ,k <C-W>k
noremap ,j <C-W>j
noremap ,h <C-W>h
noremap ,l <C-W>l
noremap ,p <C-W>p
noremap ,o <C-W>o

" Testing
set completeopt=longest,menuone,preview

inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u\<cr>"
inoremap <expr> <c-n> pumvisible() ? "\<lt>c-n>" : "\<lt>c-n>\<lt>c-r>=pumvisible() ? \"\\<lt>down>\" : \"\"\<lt>cr>"
inoremap <expr> <m-;> pumvisible() ? "\<lt>c-n>" : "\<lt>c-x>\<lt>c-o>\<lt>c-n>\<lt>c-p>\<lt>c-r>=pumvisible() ? \"\\<lt>down>\" : \"\"\<lt>cr>"

" Swap ; and :  Convenient.
noremap : ;
noremap! : ;
noremap ; :
noremap! ; :

iunmap :
iunmap ;

"}}}

abbr MCPAN https://metacpan.org/module/

set listchars=tab:▸\ ,eol:¬
set list

" vim: foldmethod=marker
