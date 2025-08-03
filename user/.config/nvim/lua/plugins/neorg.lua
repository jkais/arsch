return {
  {
    "nvim-neorg/neorg",
    lazy = false,
    version = "*",
    opts = {
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},          -- <- richtig: core.concealer statt core.norg.concealer
        ["core.dirman"] = {
          config = {
            workspaces = {
              my_workspace = "~/notes",
            },
          },
        },
        ["core.qol.todo_items"] = {},
      },
    },
  },
}

