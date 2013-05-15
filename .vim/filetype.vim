"my filetype
if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    au! BufRead,BufNewFile *.mako   setfiletype html
augroup END
