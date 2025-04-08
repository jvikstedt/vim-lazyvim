return {
  "ibhagwan/fzf-lua",
  keys = {
    {
      "<c-p>",
      LazyVim.pick("files", { root = false }),
      desc = "Find files",
    },
    {
      "<leader>ag",
      LazyVim.pick("grep_cword", { root = false }),
      desc = "Grep string",
    },
    {
      "<leader>p",
      "<cmd>FzfLua buffers sort_mru=true sort_lastused=true<cr>",
      desc = "Search buffers",
    },
    {
      "<leader>/",
      LazyVim.pick("grep", { root = false }),
      desc = "Grep (Root Dir)",
    },
  },
}
