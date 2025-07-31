return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      local servers = {
        ts_ls = {},
        solargraph = {},
      }

      for server, config in pairs(servers) do
        if lspconfig[server] then
          lspconfig[server].setup(config)
        end
      end
    end,
  }
}
