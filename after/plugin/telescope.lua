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
-- [f]ind [f]iles
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- [f]ind [b]uffers
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- [f]ind [s]ymbols
vim.keymap.set('n', '<leader>fs', builtin.lsp_workspace_symbols, {})
-- basically vim search
vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find, {})
