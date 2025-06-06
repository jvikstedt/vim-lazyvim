-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- gdscript setup
require("lspconfig").gdscript.setup({})

require("lint").linters_by_ft = {
  gdscript = { "gdlint" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "gdscript",
  command = "setlocal noexpandtab",
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufNewFile" }, {
  pattern = "*.gdshaderinc",
  command = "set filetype=gdshader",
})

vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = { "*.mp3", "*.wav", "*.flac", "*.ogg", "*.m4a" },
  callback = function(args)
    local file = vim.fn.expand("<afile>")
    vim.fn.jobstart({ "xdg-open", file }, { detach = true })
    vim.cmd("bd!") -- Optional: close the buffer after launching
  end,
})
