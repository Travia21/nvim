local telescope = require('telescope')

telescope.setup {
  extensions = {
    fzf = {
      fuzzy = true
    }
  }
}

-- Can't get this to work
--telescope.load_extension("fzf")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "telescope find files" })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "telescope live grep" })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "telescope find buffer" })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "telescope help tags" })
vim.keymap.set('n', '<leader>fs', builtin.lsp_workspace_symbols, { desc = "telescope find symbol" })
vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find, { desc = "telescope fuzzy find in buffer" })
