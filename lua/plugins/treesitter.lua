return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "c",
      "css",
      "diff",
      "fish",
      "html",
      "go",
      "javascript",
      "jsdoc",
      "json",
      "jsonc",
      "lua",
      "luadoc",
      "luap",
      "markdown_inline",
      "markdown",
      "python",
      "query",
      "regex",
      "sql",
      "svelte",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "xml",
      "yaml",
    },
    highlight = {
      set_custom_captures = {
        ["@keyword.overrides"] = "@keyword.function",
        ["@operator.overrides"] = "@keyword.conditional",
      }
    }
  }
}