local M = {}
local fzf = require("fzf-lua")

function M.pick_project()
  local projects = require("config/my_projects").projects

  fzf.fzf_exec(projects, {
    prompt = "Projects> ",
    actions = {
      ["default"] = function(selected)
        if selected and #selected > 0 then
          vim.cmd("cd " .. selected[1])
          print("Switched to " .. selected[1])
        end
      end,
    },
  })
end

return M
