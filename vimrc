" Set compatibility to Vim only
set nocompatible

" Aiuta i plugin quando vengono richiamati
filetype off

" Sinstassi 
syntax on 

" Carica correttamente i plugins
filetype  plugin indent on

" Modelines off
set modelines=0

" Wrap il testo fuori dallo schermo 
set wrap

" Massima larghezza del testo e altri dettagli per il testo 
set textwidth=79
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" Mostra 5 linee sullo scrolling
set scrolloff=5

" Sistema alcuni problemi comuni per quanto riguarda il backspace
set backspace=indent,eol,start

" Aumento velocità scrolling
set ttyfast

" Barra di stato
set laststatus=2

" Opzioni di visualizzazione
set showmode
set showcmd

" Differenti tipi di spazio
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Righe numerate
set number

" Opzioni per visualizzazione della barra di stato
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Encoding
set encoding=utf-8

" Impostazioni per la ricerca
set hlsearch
set incsearch
set ignorecase
set smartcase

" Salva e carca automaticamente 
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" Chiamata al file vimrc.plug
if filereadable (expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif

" NERDTREE OPZIONI INIZIO
"
" Mappatura tasto F6 per NerdTreeToogle
nmap <F6> :NERDTreeToggle<CR>

" File Nascosti mostrati da NerdTree
let NERDTreeShowHidden=1

" NERDTREE OPZIONI FINE


