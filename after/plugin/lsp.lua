local lsp_zero = require('lsp-zero')
local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

lsp_zero.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ['<C-Space>'] = cmp.mapping.complete()
})

lsp_zero.preset('recommended')

-- Figure out if I want sign icons first
lsp_zero.set_preferences({
  sign_icons = { }
})

lsp_zero.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set("n", "gd",           function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K",            function() vim.lsp.buf.hover() end, opts)
  --workspace_symbols doesn't work
  vim.keymap.set("n", "<leader>vws",  function() vim.lsp.buf.workspace_symbols() end, opts)
  vim.keymap.set("n", "<leader>vd",   function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d",           function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d",           function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca",  function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr",  function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn",  function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>",        function() vim.lsp.buf.signature_help() end, opts) -- Same keymap as harpoon...
end)

lsp_zero.setup()

cmp.setup({
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    -- autocomplete
    -- select = false: but only when an option is selected
    ["<Tab>"] = cmp.mapping.confirm({select = false}), -- Seriously, Ctrl+y is terrible for autocomplete
    ["<S-Tab>"] = cmp.mapping.confirm({select = true}), -- Shift+Tab for taking the top option
  }),
})
