set nocompatible                " choose no compatibility with legacy vi syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
set showmode                    " show current mode
set spelllang=en_us             " US english spelling
set ruler<                      " show cursor position
" set mouse=a                     " allow mouse interaction terminal
set ls=2                        " always show status line
set showtabline=2               " always show tab bar
set background=dark

"" Whitespace / Indentation
set wrap                        " wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode, including to previous line
set autoindent

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching (search while typing)
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

""" Load Pathogen
call pathogen#infect()

""" Fuzzy Finder
map <Leader>ff :FufFile<CR>
map <Leader>fb :FufBuffer<CR>
map <Leader>fl :FufLine<CR>
map <Leader>fj :FufJump<CR>
let g:fuf_previewHeight = 10
let g:fuf_autoPreview = 0

""" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬     " Shows characters for tabs and end of line

""" Turn on show invisibles
set list                        " Show listchars (above)

""" 
map <Leader>nt :NERDTreeToggle<CR>

""" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val,"name")')
endfunc

""" Text "Bubbling" - Move selected text up and down
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

""" Set some extra files to use the ruby syntax
au BufRead,BufNewFile {Capfile,Gemfile,Rakefile,Thorfile,config.ru,.caprc,.irbrc,irb_tempfile*} set ft=ruby

""" JSON syntax can use javascript
au BufRead,BufNew {*.json} set ft=javascript

""" Helpful status line, use without powerline
" set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

""" ejs files use HTML
au BufNewFile,BufRead *ejs set filetype=js

