set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
"Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Themes
Plugin 'morhetz/gruvbox'

"IDE
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'kaikataldo/material.vim'
Plugin 'cormacrelf/vim-colors-github'
Plugin 'vim-python/python-syntax'
call vundle#end()            " required
filetype plugin indent on    " required

"Paquetes Plug
"call plug#begin('~/.vim/plugged')
"call plug#end()

"Configuracion plugins
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let g:deoplete#enable_at_startup = 1
let g:jsx_ext_required = 0
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden=1

"Atajos
let mapleader = " "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

"Configuracion vim
set number			"margen de numeros
set mouse=a			"uso de ratón
set numberwidth=5		"sangría de números
set clipboard=unnamed		"Portapapeles del sistema
syntax enable
set showcmd			"muestra comandos
set ruler			"muestra posicion
set encoding=utf-8
set showmatch			"muestra pareja de parentesis
set sw=2			"2 espacios de indentacion
"set relativenumber		"Muestra líneas relativas 
set laststatus=2
"set noshowmode
set backspace=indent,eol,start
"Custom aliases
"alias ll="ls -la";
"alias ..="cd ../";
