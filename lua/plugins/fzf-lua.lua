return {
  "ibhagwan/fzf-lua",
  keys = {
    {
      "<c-p>",
      LazyVim.pick("files"),
      desc = "Find files",
    },
    {
      "<leader>ag",
      LazyVim.pick("grep_cword"),
      desc = "Grep string",
    },
    {
      "<leader>p",
      "<cmd>FzfLua buffers sort_mru=true sort_lastused=true<cr>",
      desc = "Search buffers",
    },
  },
}
