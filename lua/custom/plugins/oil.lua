vim.pack.add {
  { src = 'https://github.com/stevearc/oil.nvim', version = vim.version.range '*' },
  'https://github.com/nvim-mini/mini.icons',
}

vim.keymap.set('n', '<leader>o', '<CMD>Oil<CR>', { desc = '[O]il' })

require('oil').setup {}

