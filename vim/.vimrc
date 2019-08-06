set runtimepath+=/opt/vim_runtime

source /opt/vim_runtime/vimrcs/basic.vim
source /opt/vim_runtime/vimrcs/filetypes.vim
source /opt/vim_runtime/vimrcs/plugins_config.vim
source /opt/vim_runtime/vimrcs/extended.vim

try
source /opt/vim_runtime/my_configs.vim
catch
endtry

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
