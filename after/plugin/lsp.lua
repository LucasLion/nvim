local lsp_zero = require("lsp-zero")

-- lsp-zero v3.x on_attach
lsp_zero.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>kws", vim.lsp.buf.workspace_symbol, opts)
  vim.keymap.set("n", "<leader>kd", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "<leader>kca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "<leader>krr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>krn", vim.lsp.buf.rename, opts)
  vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end)

-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "clangd", "lua_ls" },
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      require("lspconfig").lua_ls.setup({
        settings = {
          Lua = {
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
          },
        },
      })
    end,
  },
})

-- Config nvim-cmp (auto-complétion)
local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
  },
})

-- Sign icons
lsp_zero.set_sign_icons({
  error = "E",
  warn = "W",
  hint = "H",
  info = "I",
})

vim.diagnostic.config({
    virtual_text = true,
})

