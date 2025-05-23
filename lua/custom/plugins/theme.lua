return {
  'folke/tokyonight.nvim',
  priority = 1000,
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('tokyonight').setup {
      styles = {
        comments = { italic = false },
      },
      on_colors = function(colors)
        colors.bg = '#000000'
        colors.bg_float = '#000000'
      end,
    }

    vim.cmd.colorscheme 'tokyonight-night'
  end,
}
