-- List of plugins to download and install
require("lazy").setup({
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 999,
    config = function()
      vim.cmd.colorscheme("kanagawa-dragon")
    end,
  },

  { -- Just another colorscheme in case I want to copy ThePrimeagen
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },

  {
    "VonHeikemen/lsp-zero.nvim",
    dependencies = {
      -- LSP Support
      {
        "neovim/nvim-lspconfig",
        dependencies = {
          "hrsh7th/cmp-nvim-lsp",
        }
      },
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",

      -- Autocompletion
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lua",

      -- Snippets
      {
        "L3MON4D3/LuaSnip",
        dependencies = {
          "saadparwaiz1/cmp_luasnip",
          "rafamadriz/friendly-snippets",
        },
      },
    },
  },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "BurntSushi/ripgrep",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --buuild build --config Release && cmake --install build -"
      },
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function ()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
    end
  },

  {
      'echasnovski/mini.nvim',
  },

  {
    "folke/trouble.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
  },

  {
    "folke/todo-comments.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      signs = false,
    },
  },

  {
    "doctorfree/cheatsheet.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/popup.nvim",
    },
  },

  {
    "theprimeagen/harpoon",
  },

  {
    "mbbill/undotree",
  },
  -- Not needed yet
  -- { "tpope/vim-fugitive" },
})
