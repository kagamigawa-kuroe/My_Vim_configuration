call plug#begin()
  Plug 'Yggdroot/indentLine'
  Plug 'preservim/nerdtree'
  Plug 'luochen1990/rainbow'
  Plug 'ycm-core/YouCompleteMe'
call plug#end()

syntax on
set backspace=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set nu
set autoindent
set cindent

colorscheme janah 

autocmd InsertLeave * if pumvisible() == 0|pclose|endif
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:indentLine_enabled = 1
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进

let g:rainbow_active = 1
let g:rainbow_conf = {
			\   'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
			\   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
			\   'operators': '_,_',
			\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
			\   'separately': {
				\       '*': {},
				\       'tex': {
					\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
					\       },
					\       'lisp': {
						\           'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
						\       },
						\       'vim': {
							\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
							\       },
							\       'html': {
								\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
								\       },
								\       'css': 0,
								\   }
								\}
