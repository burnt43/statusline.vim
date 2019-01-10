" remap : to set the status line, because the CmdLineEnter is whack.
nnoremap : :call statusline#SetStatusLine("command")<cr>:

" enable the statusline
set laststatus=2
call statusline#SetStatusLine('normal')

" change statusline based on events in vim
augroup statusline_events
  autocmd!
  autocmd InsertLeave * call statusline#SetStatusLine('normal')
  autocmd InsertEnter * call statusline#SetStatusLine('insert')
  autocmd CmdLineLeave * call statusline#SetStatusLine('normal')
augroup END
