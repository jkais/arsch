return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {"css", "csv", "go", "javascript", "json", "lua", "ruby", "toml", "yaml"},
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}
