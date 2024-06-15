return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  event = "InsertEnter",
  opts = {
    suggestion = {
      auto_trigger = true,
      keymap = {
        accept = "<C-y>",
        next = "<C-n>",
        prev = "<C-p>",
        dismiss = "<Esc>",
      }
    }
  }
}

