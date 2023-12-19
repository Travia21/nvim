local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗"
		}
	}
})

mason_lspconfig.setup({
  ensure_installed = {
    "asm_lsp",
    "bashls",
    "clangd",
    "cmake",
    "dockerls", --docker
    "docker_compose_language_service", --docker compose
    -- "golangci_lint_ls", -- go | didn't work
    "jsonls",
    "jdtls", --java
    -- "jqls", | didn't work
    "lua_ls",
    "marksman", --markdown
    "powershell_es",
    "pyright", --python
    "rust_analyzer",
  },
  handlers = {
    require("lsp-zero").default_setup,
  },
})
