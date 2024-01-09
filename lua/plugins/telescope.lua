return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<c-p>",
      function()
        require("telescope.builtin").find_files()
      end,
      desc = "Find files",
    },
    {
      "<leader>ag",
      function()
        require("telescope.builtin").grep_string()
      end,
      desc = "Grep string",
    },
    {
      "<leader>p",
      function()
        require("telescope.builtin").buffers({ sort_lastused = true })
      end,
      desc = "Search buffers",
    },
  },
}
