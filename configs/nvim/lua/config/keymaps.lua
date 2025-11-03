-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<Space>e", function()
  require("oil").open()
end, { noremap = true, silent = true })

vim.keymap.set("n", "<Space>E", function()
  require("oil").open()
end, { noremap = true, silent = true })
