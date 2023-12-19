local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-h>", ui.toggle_quick_menu)

--Suggested by theprimeagen, but I don't like the maps
--vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
--vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
--vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
--vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)

-- settings
require("harpoon").setup({
  global_settings = {
    --set the mark upon calling `toggle` on the ui, instead of require `:w`
    save_on_toggle = true,

    -- saves the harpoon file upon every change. disabling is unrecommended.
    save_on_change = true,

    -- filetypes that you want to prevent from adding to the harpoon list menu.
    excluded_filetypes = { "harpoon" },

    -- set marks specific to each git branch inside git repository
    mark_branch = true,

    -- enable tabline with harpoon marks
    tabline = true,
    tabline_prefix = "   ",
    tabline_suffix = "   ",
  }
})
