-- NOTE: mini.ai
-- Examples:
-- va) - [v]isually select [a]round [)]parentheses
-- yinq - [y]ank [i]nside [n]ext [q]uote
-- ci' - [c]hange [i]nside [']quote
require("mini.ai").setup({
  config = {
    n_lines = 500,
    something = 'does it work with ',
    something2 = "Yes it does",
  },
})

-- TODO: Get this working with some shortcut, this is the functionality I've
--       been looking for
-- NOTE: mini.surround
-- Examples:
-- saiw) - [s]urround [a]dd [i]nner [w]ord [)]parentheses
-- sd' - [s]urround [d]elete [']quotes
-- sr)' - [s]urround [r]eplace [)]parentheses [']quotes
--
-- I don't want to replace s functionality; maybe with <leader> prepended
--require("mini.suround").setup({})

-- NOTE: mini.statusline
-- Simple and easy statusline.
require('mini.statusline').setup()
