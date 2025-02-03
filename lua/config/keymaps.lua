-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }
local wk = require("which-key")
local fns = require("config.functions")

-- -- General
-- ESC
vim.keymap.set("i", "jk", "<Esc>l", opts)

-- Which-key
wk.add({
  { "<leader>t", group = "Todos", icon = "" },
  { "<leader>a", group = "Ai", icon = "" },
  -- add keys to avante for switching prompts on the fly
  {
    "<leader>ap",
    fns.SwitchAvantePrompt,
    desc = "switch Assistent",
  },
})
