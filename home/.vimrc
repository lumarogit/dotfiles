" 28/10/2020 Archivo de configuración para Vim

syntax on                  " Resaltar sintaxis
filetype plugin indent on  " Carga los plugins correctamente
colorscheme monochrome     " Esquema de color
set number                 " Números de línea
set history=100            " Guardar historial de comandos
set undolevels=500         " Niveles para deshacer cambios
set nocompatible           " Pone los valores por defecto de Vim, en lugar de los de Vi.
set helplang=es            " Idioma para la ayuda y mensajes
set incsearch              " Búsqueda incremental a medida que se busca
set hlsearch               " Resaltar búsqueda
set showmode               " Mostrar el modo actual en uso
set wildmenu               " Mejora la finalizacion de la linea de comandos
set wrap                   " Habilita el ajuste de lineas
set cursorline             " Resaltar linea actual
set laststatus=2           " Mostrar siempre la línea de estado

" Formato para la barra de estado
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%A,%x')}
