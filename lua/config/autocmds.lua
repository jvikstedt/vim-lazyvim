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

-- Telescope, allow one escape press to leave telescope window
local actions = require("telescope.actions")

require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
      },
    },
  },
})
