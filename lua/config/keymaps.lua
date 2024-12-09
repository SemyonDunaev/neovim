-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }

-- -- General
-- ESC
vim.keymap.set("i", "jk", "<Esc>l", opts)

-- Neorg
vim.keymap.set("n", "<localleader>W", "<Plug>(neorg.telescope.switch_workspace)", { desc = "sWitch workspace" })
vim.keymap.set("n", "<localleader>F", "<Plug>(neorg.telescope.find_norg_files)", { desc = "Find neorg file" })
vim.keymap.set("n", "<localleader>H", "<Plug>(neorg.telescope.search_headings)", { desc = "search Heading" })
vim.keymap.set("n", "<localleader>I", function()
  vim.cmd("Neorg index")
end, { desc = "Index" })
