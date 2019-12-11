set number
syntax enable
set background=dark
colorscheme solarized

" From https://maskys.github.io/installing-drupal-code-sniffer-on-vim/index.html
let g:syntastic_php_phpcs_args="--standard=Drupal --extensions=php,module,inc,install,test,profile,theme"

if has('statusline')
    set laststatus=2 " Broken down into easily includeable segments
    set statusline=%<%f\ " Filename
    set statusline+=%w%h%m%r " Options
    set statusline+=%{fugitive#statusline()} " Git Hotness
    set statusline+=\ [%{&ff}/%Y] " filetype
    set statusline+=\ [%{getcwd()}] " current dir
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_enable_signs=1
    set statusline+=%=%-14.(%l,%c%V%)\ %p%% " Right aligned file nav info
endif

