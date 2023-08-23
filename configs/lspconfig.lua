local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.tsserver.setup {
  require("typescript").setup {
    server = {
      capabilities = require("custom.configs.tsserver").capabilities,
      handlers = require("custom.configs.tsserver").handlers,
      on_attach = require("custom.configs.tsserver").on_attach,
      settings = require("custom.configs.tsserver").settings,
    },
  },
}

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

--
-- lspconfig.pyright.setup { blabla}
