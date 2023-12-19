local cheatsheet = require("cheatsheet")
local ctactions = require("cheatsheet.telescope.actions")

cheatsheet.setup({
  bundled_cheatsheets = { "default", "lua", "markdown", "netrw", "unicode" },
  bundled_plugin_cheatsheets = {
    enabled = {
      "auto-session",
      "goto-preview",
      "octo.nvim",
      "telescope.nvim",
      "vim-easy-align",
      "vim-sandwich",
    },
  },
  include_only_installed_plugins = true,

  ["<CR>"] = ctactions.select_or_fill_commandline,
  ["<A-CR>"] = ctactions.select_or_execute,
  ["<C-Y>"] = ctactions.copy_cheat_value,
  ["<C-E>"] = ctactions.edit_use_cheatsheet,
})
