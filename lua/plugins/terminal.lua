return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
        autochdir = true,
        open_mapping = [[<c-\>]],
        size = 12,
        shade_terminals = false,
        -- add --login so ~/.zprofile is loaded
        shell = "zsh --login",
      })
    end,
  },
}
