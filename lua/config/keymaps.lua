-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)

vim.keymap.set("n", "<leader>fp", function()
  require("config.fzf_project").pick_project()
end, { desc = "Pick Project (FZF)" })

vim.keymap.set("n", "gai", function()
  require("fzf-lua").lsp_incoming_calls()
end, { desc = "Incoming Calls (fzf-lua)" })
