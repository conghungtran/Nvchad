-- ~/.config/nvim/lua/custom/plugins/lspconfig.lua
local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    -- Your existing customization
    client.server_capabilities.signatureHelpProvider = false

    -- ADD THIS LINE: This disables virtual text for the current buffer
    vim.diagnostic.config({ virtual_text = false, signs = false, underline = false,
  })

    -- Now call the original on_attach to get keymaps, etc.
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}
