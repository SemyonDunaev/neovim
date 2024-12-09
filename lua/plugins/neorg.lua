return {
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    opts = {
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.integrations.telescope"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              org = "~/notes/org",
              dev = "~/notes/dev",
              job = "~/notes/job",
            },
            default_workspace = "org",
          },
        },
      },
    },
    dependencies = { { "nvim-lua/plenary.nvim" }, { "nvim-neorg/neorg-telescope" } },
  },
}
