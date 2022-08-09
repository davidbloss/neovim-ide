local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then return end

-- TODO: review which to keep. This feels like overkill.
local servers = {
  "pylsp", "pyright", "jedi_language_server"
}

lsp_installer.setup()

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then return end

local opts = {}

for _, server in pairs(servers) do
  opts = {
    on_attach = require("user.lsp.handlers").on_attach,
    capabilities = require("user.lsp.handlers").capabilities
  }

  -- TODO: uncomment after adding related settings files
  -- if server == "pylsp" then
  --   local pylsp_opts = require "user.lsp.settings.pylsp"
  --   opts = vim.tbl_deep_extend("force", pylsp_opts, opts)
  -- end

  -- if server == "jedi_language_server" then
  --   local jedi_opts = require "user.lsp.settings.jedi_language_server"
  --   opts = vim.tbl_deep_extend("force", jedi_opts, opts)
  -- end

  -- if server == "pyright" then
  --   local pyright_opts = require "user.lsp.settings.pyright"
  --   opts = vim.tbl_deep_extend("force", pyright_opts, opts)
  -- end

  lspconfig[server].setup(opts)
end
