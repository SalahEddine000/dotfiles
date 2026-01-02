return {
  -- Flutter tools
  {
    "akinsho/flutter-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    ft = "dart",
    config = function()
      require("flutter-tools").setup({
        widget_guides = { enabled = false },
        debugger = { enabled = false },
        closing_tags = { enabled = true },
        decorations = {
          statusline = { enabled = false },
        },
        dev_log = {
          enabled = true,
          open_cmd = "botright 15split",
        },
        lsp = {
          color = { enabled = false },
          settings = {
            dart = {
              completeFunctionCalls = true,
              showTodos = false,
              lineLength = 80,
              analysisExcludedFolders = {
                vim.fn.expand("$HOME/.pub-cache"),
                vim.fn.expand("$HOME/.flutter"),
                vim.fn.expand("$HOME/fvm"),
                vim.fn.expand("$HOME/Android"),
                vim.fn.expand("$HOME/Sdk"),
              },
            },
          },
        },
      })
    end,
  },

  -- Optional: auto-close HTML-like tags (useful for Flutter widget trees)
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    config = true,
  },
}
