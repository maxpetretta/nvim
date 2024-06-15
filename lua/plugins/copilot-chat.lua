local M = {}

---@param kind string
function M.pick(kind)
  return function()
    local actions = require("CopilotChat.actions")
    local items = actions[kind .. "_actions"]()
    if not items then
      LazyVim.warn("No " .. kind .. " found on the current line")
      return
    end
    local ok = pcall(require, "fzf-lua")
    require("CopilotChat.integrations." .. (ok and "fzflua" or "telescope")).pick(items)
  end
end

return {
  "CopilotC-Nvim/CopilotChat.nvim",
  opts = {
    auto_insert_mode = true,
    window = {
      width = 0.4
    }
  },
  keys = function()
    local keys = {
      { "<leader>a", "", desc = "+ai", mode = { "n", "v" } },
      {
        "<leader>ac",
        function()
          return require("CopilotChat").toggle()
        end,
        desc = "Chat Toggle (Copilot)",
        mode = { "n", "v" },
      },
      -- {
      --   "<leader>ax",
      --   function()
      --     return require("CopilotChat").reset()
      --   end,
      --   desc = "Clear Chat (Copilot)",
      --   mode = { "n", "v" },
      -- },
      {
        "<leader>aq",
        function()
          local input = vim.fn.input("Quick Chat: ")
          if input ~= "" then
            require("CopilotChat").ask(input)
          end
        end,
        desc = "Quick Chat (Copilot)",
        mode = { "n", "v" },
      },
      -- Show help actions with telescope
      { "<leader>ad", M.pick("help"), desc = "Diagnostic Help (Copilot)", mode = { "n", "v" } },
      -- Show prompts actions with telescope
      { "<leader>ap", M.pick("prompt"), desc = "Prompt Actions (Copilot)", mode = { "n", "v" } },
    }
    return keys
  end
}