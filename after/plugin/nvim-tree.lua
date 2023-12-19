require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function(data) -- I couldn't figure out how to define a function to insert into here...
    local is_directory = vim.fn.isdirectory(data.file) == 1
    if not is_directory then
      return
    end

    vim.cmd.cd(data.file)

    require("nvim-tree.api").tree.open()
  end
})

local function change_root_to_global_cwd()
  local api = require("nvim-tree.api")
  local global_cwd = vim.fn.getcwd(-1, -1)
  api.tree.change_root(global_cwd)
end

vim.keymap.set("n", "<C-r>", change_root_to_global_cwd) -- I guess this works, I'd prefer to select the root directly

