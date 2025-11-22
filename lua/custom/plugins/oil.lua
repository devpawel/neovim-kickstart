vim.pack.add({
  'https://github.com/stevearc/oil.nvim',
})

vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "[O]il" })

require("oil").setup()
