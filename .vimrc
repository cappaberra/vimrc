" Set up Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'speshak/vim-cfn'
call vundle#end()

call pathogen#infect()
"set background=dark
syntax on

set nocompatible
set shell=/bin/bash
filetype indent plugin on
set expandtab
set smarttab
set autoindent

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=1
"let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_auto_loc_list=1

"To enable Just puppet-lint and disable the parser uncomment next line
let g:syntastic_puppet_checkers=['puppetlint']
let g:syntastic_yaml_checkers = ['yamllint']
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_cloudformation_checkers = ['cfn_lint']
"
let g:vim_markdown_folding_disabled=1
