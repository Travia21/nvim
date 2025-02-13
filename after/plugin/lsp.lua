---@diagnostic disable: undefined-field,unused-local
local lsp_zero = require("lsp-zero")
local luasnip = require("luasnip")
local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }

lsp_zero.preset('recommended')

-- Figure out if I want sign icons first
lsp_zero.set_preferences({
  sign_icons = { }
})

lsp_zero.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set("n", "gd",           function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K",            function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>bws",  function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>df",   function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "<leader>bca",  function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>brr",  function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>brn",  function() vim.lsp.buf.rename() end, opts)

end)

lsp_zero.setup()

luasnip.setup()

cmp.setup({
  mapping = {
    ["<C-Space>"] = cmp.mapping(function(fallback)
      cmp.complete()
    end, { "i", "s" }),

    ["<C-y>"] = cmp.mapping(function()
      if cmp.visible() then
        if luasnip.expandable() then
          luasnip.expand()
        else
          cmp.confirm({ select = true, })
        end
      end
    end, { "i", "s" }),

    ["<C-n>"] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_next_item(cmp_select)
      elseif luasnip.locally_jumpable(1) then
        luasnip.jump(1)
      end
    end, { "i", "s" }),

    ["<C-p>"] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item(cmp_select)
      elseif luasnip.locally_jumpable(-1) then
        luasnip.jump(-1)
      end
    end, { "i", "s" }),
  },

  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },

  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
  }, {
    { name = "buffer" },
  },

  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
})
