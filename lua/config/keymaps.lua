-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- floating terminal
local lazyterm = function()
  LazyVim.terminal(nil, { cwd = LazyVim.root() })
end
vim.keymap.set("n", "<leader>ft", lazyterm, { desc = "Terminal (Root Dir)" })
vim.keymap.set("n", "<leader>fT", function()
  LazyVim.terminal()
end, { desc = "Terminal (cwd)" })
vim.keymap.set("n", "<c-/>", "<leader>fT", function()
  LazyVim.terminal()
end, { desc = "Terminal (cwd)" }, { desc = "Terminal (cwd)" })
vim.keymap.set("n", "<c-_>", lazyterm, { desc = "which_key_ignore" })
