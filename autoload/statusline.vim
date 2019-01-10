function! statusline#SetStatusLine(type)
  if a:type ==# 'normal'
    " badwolf tardis
    hi StatusLine ctermbg=39 ctermfg=16
    set statusline=[NORMAL]
  elseif a:type ==# 'insert'
    " badwolf orange
    hi StatusLine ctermbg=214 ctermfg=16
    set statusline=[INSERT]
  elseif a:type ==# 'command'
    " badwolf lime
    hi StatusLine ctermbg=154 ctermfg=16
    set statusline=[COMMAND]
  end

  set statusline+=\ %f    " filename
  set statusline+=\ %m    " modified flag
  set statusline+=%=      " move to right side
  set statusline+=%y      " filetype
  set statusline+=\ %4l   " current line
  set statusline+=\/%-4L  " total lines
  set statusline+=\ %3p%% " percentage
  set statusline+=\ %3c   " column number
endfunction
