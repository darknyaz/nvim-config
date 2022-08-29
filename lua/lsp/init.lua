local M = {}

local servers = {
  gopls = {},
  html = {},
  jsonls = {},
  sumneko_lua = {},
  tsserver = {},
  pylsp = {},
}

local function on_attach(client, bufnr)
  -- Enable completion triggered by <C-X><C-O>
  -- See `:help omnifunc` and `:help ins-completion` for more information.
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  -- Use LSP as the handler for formatexpr.
  -- See `:help formatexpr` for more information.
  vim.api.nvim_buf_set_option(0, "formatexpr", "v:lua.vim.lsp.formatexpr()")

  -- Configure key mappings
  require("lsp.keymaps").setup(client, bufnr)
end

-- local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()) -- for nvim-cmp

local opts = {
  on_attach = on_attach,
  -- capabilities = capabilities, -- for nvim-cmp
  flags = {
    debounce_text_changes = 150,
  },
}

function M.setup()
  require("lsp.installer").setup(servers, opts)
end

return M