" ~/.config/nvim/init.vim (real file, not a symlink)
source ~/Documents/Github/2.1.vim/1.Install/vimrc

lua << EOF
vim.keymap.set('n', '<leader>cb', function()
  local row = vim.api.nvim_win_get_cursor(0)[1]
  vim.api.nvim_buf_set_lines(0, row - 1, row, false, {
    '',
    '[code,bash]',
    '====',
    '',
    '===='
  })
  vim.api.nvim_win_set_cursor(0, {row + 3, 0})
end)

vim.keymap.set('n', '<leader>ex', function()
  local row = vim.api.nvim_win_get_cursor(0)[1]
  vim.api.nvim_buf_set_lines(0, row - 1, row, false, {
    '[example%collapsible]',
    ''
  })
  vim.api.nvim_win_set_cursor(0, {row + 1, 0})
end)
EOF
