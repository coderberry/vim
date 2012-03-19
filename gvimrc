set go=egmt                  " set gui options - :help guioption to view options
color darkbone               " theme
set number                   " turn on line numbers
set cursorline               " highlight cursorline


if has("gui_macvim")
  set guifont=Menlo:h14

	" Fullscreen takes up entire screen
	set fuoptions=maxhorz,maxvert
endif

" Use CTRL-S for saving, also in Insert mode
noremap <c-s> :update<CR>
vnoremap <c-s> <c-c>:update<CR>
inoremap <c-s> <c-o>:update<CR>
