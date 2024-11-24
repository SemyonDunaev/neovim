return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bufdelete = { enabled = true },
    debug = { enabled = true },
    lazygit = { enabledd = true },
    notify = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    terminal = { enabled = true },
    toggle = { enabled = true },
    words = { enabled = true },
    styles = {
      notification = {
        wp = { wrap = true }, -- wrap notifications
      },
    },
  },
}
