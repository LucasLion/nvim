local lsp = require("lsp-zero")

lsp.preset("recommended")

-- Mason et mason-lspconfig pour gérer l'installation des LSP
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

mason.setup()
mason_lspconfig.setup({
    ensure_installed = { "clangd" },
    automatic_installation = true,
})

-- Configurer lua_ls pour éviter l'erreur 'Undefined global vim'
local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      workspace = { checkThirdParty = false },
      telemetry = { enable = false },
    },
  },
})

-- Config nvim-cmp (auto-complétion)
local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = {
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ['<C-Space>'] = cmp.mapping.complete(),
}

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

cmp.setup({
  mapping = cmp_mappings,
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
  },
})

-- Preferences lsp-zero
lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = "E",
        warn = "W",
        hint = "H",
        info = "I",
    },
})

lsp.on_attach(function(client, bufnr)
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

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})

