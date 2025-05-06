return {
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration

      -- Only one of these is needed.
      'nvim-telescope/telescope.nvim', -- optional
      -- 'ibhagwan/fzf-lua', -- optional
      -- 'echasnovski/mini.pick', -- optional
      -- 'folke/snacks.nvim', -- optional
    },
    keys = {
      {
        '<leader>no',
        function()
          require('neogit').open { kind = 'floating' }
        end,
        desc = '[N]eogit [O]pen in floating window',
      },
      {
        '<leader>n;',
        function()
          require('neogit').open { kind = 'vsplit' }
        end,
        desc = '[N]eogit [V]ertical split',
      },
      {
        '<leader>nc',
        function()
          require('neogit').open { 'commit' }
        end,
        desc = '[N]eogit [C]ommit',
      },
      {
        '<leader>ndo',
        function()
          require('neogit').open { 'diff' }
        end,
        desc = '[N]eogit [D]iff [O]pen',
      },
      {
        '<leader>ndc',
        '<cmd>DiffviewClose<CR>',
        desc = '[N]eogit [D]iff [C]lose',
      },
    },
  },
}
