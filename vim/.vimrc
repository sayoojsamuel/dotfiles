 """"""
 " Sage settings (from Franco Saliola)
 autocmd BufRead,BufNewFile *.sage,*.pyx,*.spyx set filetype=python
 autocmd Filetype python set tabstop=4|set shiftwidth=4|set expandtab
 autocmd FileType python set makeprg=sage\ -b\ &&\ sage\ -t\ %

"
" Sudo Save command W
"
"command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
"
set foldcolumn=0
" Disable visual mode for mouse"
set mouse-=a
