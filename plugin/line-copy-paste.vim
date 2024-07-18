" line copy and paste among different vim sessions
if has('win32') || has('win64')
    let g:VimLineClipboard = expand('$TEMP') . '\vim.clipboard'
else
    let g:VimLineClipboard = '/tmp/vim.clipboard'
endif
xnoremap <silent> gy :write! <C-r>=g:VimLineClipboard<CR><CR>
nnoremap <silent> gy :. write! <C-r>=g:VimLineClipboard<CR><CR>
xnoremap <silent> gp d:-1 read <C-r>=g:VimLineClipboard<CR><CR>
xnoremap <silent> gP d:-1 read <C-r>=g:VimLineClipboard<CR><CR>
nnoremap <silent> gp :read <C-r>=g:VimLineClipboard<CR><CR>
nnoremap <silent> gP :-1 read <C-r>=g:VimLineClipboard<CR><CR>
