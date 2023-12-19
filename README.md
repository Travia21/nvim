My neovim Configuration

Top-level init.lua
- Configures lazy.nvim and requires its config

personal
- init.lua has basic vim settings
- keymap.lua has all the custom keymaps

After/plugin
- Configures each installed plugin

LSPs
- This is hard
- Current setup relies on neovim's default LSP, nvim-lspconfig, mason.nvim, and mason-lspconfig.nvim

Commands Ran
:TSInstall rust
