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

local open_nvim_tree_if_directory = function(data)
    local is_directory = vim.fn.isdirectory(data.file) == 1
    if not is_directory then
      return
    end

    vim.cmd.cd(data.file)

    require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ 'VimEnter' }, { callback = open_nvim_tree_if_directory })
