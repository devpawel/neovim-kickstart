vim.pack.add {
  { src = 'https://github.com/NeogitOrg/neogit', version = vim.version.range '*' },
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/sindrets/diffview.nvim',
  'https://github.com/nvim-telescope/telescope.nvim',
}
-- 'https://github.com/ibhagwan/fzf-lua', -- optional
-- 'https://github.com/echasnovski/mini.pick', -- optional
-- 'https://github.com/folke/snacks.nvim', -- optional

vim.keymap.set('n', '<leader>no', function() require('neogit').open { kind = 'replace' } end, { desc = '[N]eogit [O]pen' })
vim.keymap.set('n', '<leader>n;', function() require('neogit').open { kind = 'vsplit' } end, { desc = '[N]eogit [V]ertical split' })
vim.keymap.set('n', '<leader>nc', function() require('neogit').open { 'commit' } end, { desc = '[N]eogit [C]ommit' })
vim.keymap.set('n', '<leader>ndo', function() require('neogit').open { 'diff' } end, { desc = '[N]eogit [D]iff [O]pen' })
vim.keymap.set('n', '<leader>ndc', '<cmd>DiffviewClose<CR>', { desc = '[N]eogit [D]iff [C]lose' })

require('diffview').setup {}

