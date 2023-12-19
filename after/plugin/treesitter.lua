require("nvim-treesitter.configs").setup({
  sync_install = false,
  auto_install = true,
  ignore_install = {},
  modules = {},

  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "rust" },

  highlight = {
    enable = true,
  },

  -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
  -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
  -- Using this option may slow down your editor, and you may see some duplicate highlights.
  -- Instead of true it can also be a list of languages
  additional_vim_regex_highlighting = false,

  -- treesitter incremental_selection keymaps
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<Leader>hi",
      node_incremental = "<Leader>hn",
      node_decremental = "<Leader>hd",
      scope_incremental = "<Leader>hs",
    }
  }
})
