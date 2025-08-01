return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local util = require("lspconfig.util")

      local servers = {
        solargraph = {
          cmd = { "solargraph", "stdio" },
          filetypes = { "ruby" },
          root_dir = util.root_pattern("Gemfile", ".git"),
          settings = {
            solargraph = {
              diagnostics = true,
              formatting = true,
            },
          },
        },

        gopls = {
          cmd = { "gopls" },
          filetypes = { "go", "gomod" },
          root_dir = util.root_pattern("go.mod", ".git"),
          settings = {
            gopls = {
              usePlaceholders = true,
              completeUnimported = true,
              analyses = {
                unusedparams = true,
                unreachable = true,
              },
            },
          },
        },

        ts_ls = {
          cmd = { "typescript-language-server", "--stdio" },
          filetypes = { "javascript", "javascriptreact", "json" },
          root_dir = util.root_pattern("package.json", "tsconfig.json", ".git"),
        },
      }

      for server, config in pairs(servers) do
        if lspconfig[server] then
          lspconfig[server].setup(config)
        else
          vim.notify("LSP '" .. server .. "' nicht verfügbar", vim.log.levels.WARN)
        end
      end
    end,
  },
}

