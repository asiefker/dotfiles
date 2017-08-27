let mapleader=","       " leader is comma
execute pathogen#infect()

" Color {{{
syntax on
set background=dark
colorscheme solarized
" }}}

" Spaces Tabs {{{
set showcmd
set autoindent " pervious line indent on next line
set tabstop=4 " spaces per tab
set softtabstop=4
set shiftwidth=4 " >> to match tab
set expandtab " tab to space
" }}}

" UI {{{
set number
filetype plugin indent on
set wildmenu " drop down completion
set wildmode=longest,list,full
set completeopt=menuone,menu,longest
set showmatch " highlight matching ( etc
set nowrap " don't wrap long lines 
set showmode " shows the mode vi is in
set mouse=a " enable mouse actions 
set clipboard=unnamed,autoselect " past into defaut register
" ignore filetype when exnading globs etc. 
set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set hidden " Switch bufferes w/o saving. 
" }}}

" Searching {{{
set incsearch
set smartcase
set hlsearch
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" }}}
set history=1000

" Leader Bindings {{{
inoremap jj <esc>
" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
" }}}


" Synatasitc {{{
map <Leader>s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
" }}}

" ghc-mod {{{
map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>
"}}}

" supertab {{{ 
let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

if has("gui_running")
  imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
else " no gui
  if has("unix")
    inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
  endif
endif
" }}}

" neco-ghc {{{ 
" setup completion for haskell
let g:haskellmode_completion_ghc = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
" }}}

" nerd-tree {{{ 
map <Leader>n :NERDTreeToggle<CR>
" }}}

" tabular {{{ 
let g:haskell_tabular = 1
" In visual mode map a? to get tabularize
" to align 
vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>
vmap a, :Tabularize /<-<CR>
vmap al :Tabularize /[\[\\|,]<CR>
" }}}

" ctrl-p {{{ 
map <silent> <Leader>t :CtrlP()<CR>
noremap <leader>b<space> :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = '\v[\/]dist$'
" }}}

" {{{Rust
let g:rustfmt_autosave = 1
" }}}

" {{{Notes
let g:notes_directories = ['~/Documents/Notes']
"}}}
set modelines=1
set modeline
" vim:foldmethod=marker:foldlevel=0
