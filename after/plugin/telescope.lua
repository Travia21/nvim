local telescope = require("telescope")

telescope.setup {
  extensions = {
    fzf = {
      fuzzy = true
    }
  }
}

-- Can't get this to work
-- telescope.load_extension("fzf")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
