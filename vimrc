:set number " Display line numbers on the left side
:set ls=2 " This makes Vim show a status line even when only one window is shown
:filetype plugin on " This line enables loading the plugin files for specific file types
:set tabstop=4 " Set tabstop to tell vim how many columns a tab counts for. Linux kernel code expects each tab to be eight columns wide.
:set expandtab " When expandtab is set, hitting Tab in insert mode will produce the appropriate number of spaces.
:set softtabstop=4 " Set softtabstop to control how many columns vim uses when you hit Tab in insert mode. If softtabstop is less than tabstop and expandtab is not set, vim will use a combination of tabs and spaces to make up the desired spacing. If softtabstop equals tabstop and expandtab is not set, vim will always use tabs. When expandtab is set, vim will always use the appropriate number of spaces.
:set shiftwidth=4 " Set shiftwidth to control how many columns text is indented with the reindent operations (<< and >>) and automatic C-style indentation. 
:setlocal foldmethod=indent " Set folding method
:set t_Co=256 " makes Vim use 256 colors
:set nowrap " Don't Wrap lines!
:colorscheme molokai
:set nocp " This changes the values of a LOT of options, enabling features which are not Vi compatible but really really nice
:set clipboard=unnamed
:set clipboard=unnamedplus
:set autoindent " Automatic indentation
:set cindent " This turns on C style indentation
:set si " Smart indent
:syntax enable " syntax highlighting
:set showmatch " Show matching brackets
:set hlsearch " Highlight in search
"":set ignorecase " Ignore case in search
:set noswapfile " Avoid swap files
:set mouse=a " Mouse Integration
:set cursorline " Highlight current line
:set termbidi
" auto complete for ( , " , ' , [ , { 
:inoremap        (  ()<Left>
:inoremap        "  ""<Left>
:inoremap        `  ``<Left>
:inoremap        '  ''<Left>
:inoremap        [  []<Left>
:inoremap      {  {}<Left>

" auto comment and uncooment with F6 and F7 key
:autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
:autocmd FileType sh,ruby,python   let b:comment_leader = '# '
:autocmd FileType vim   let b:comment_leader = '" '

:noremap <silent> #6 :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR> " commenting line with F6
:noremap <silent> #7 :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR> " uncommenting line with F7
:map <F5> :!python3 ./% <CR>

:noremap <silent> #3 :tabprevious<CR> " switch to previous tab with F3
:noremap <silent> #4 :tabnext<CR> " switch to next tab with F2
:map <F8> :setlocal spell! spelllang=en_us<CR> " check spelling with F8
:set pastetoggle=<F2> " Paste mode toggle with F2 Pastemode disable auto-indent and bracket auto-compelation and it helps you to paste code fro elsewhere .

"plugin

" autocomplpop setting
:set omnifunc=syntaxcomplete " This is necessary for acp plugin
:let g:acp_behaviorKeywordLength = 1 "  Length of keyword characters before the cursor, which are needed to attempt keyword completion

" airline plugin setting
:let g:airline_theme='minimalist' " set airline plugin theme
:let g:airline#extensions#tabline#enabled = 1 " showing tabs 
:let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
:helptags ~/.vim/pack/dist/start/vim-airline-themes/doc
let g:airline_theme='dark'

syntax on

set mouse=a

"
set encoding=utf8




set guifont=DroidSansMono\ Nerd\ Font\ 11


let g:airline_powerline_fonts = 1

"nerd


" NERDTree plugin setti

syntax on
filetype plugin indent on

let g:NERDTreeDirArrows=0
let NERDTreeShowHidden=1
:map <F9> :NERDTreeToggle<CR>

"rr
" noremap <F5> :! AsyncRun -raw python % <CR> 



:map <F10> :! pylint ./%<CR>
:map <F12> :bw!<CR>
