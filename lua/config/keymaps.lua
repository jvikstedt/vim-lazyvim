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

vim.api.nvim_create_user_command("FormatDisable", function(args)
  if args.bang then
    vim.b.autoformat = false
  else
    vim.g.autoformat = false
  end
end, {
  desc = "Disable autoformat-on-save",
  bang = true,
})

vim.api.nvim_create_user_command("FormatEnable", function()
  vim.b.autoformat = true
  vim.g.autoformat = true
end, {
  desc = "Re-enable autoformat-on-save",
})
