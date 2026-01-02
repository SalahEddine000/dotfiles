return {
  -- Laravel Blade support
  {
    "jwalton512/vim-blade",
    ft = "blade",
  },

  -- Better PHP support
  {
    "StanAngeloff/php.vim",
    ft = "php",
  },

  -- Flutter tools

  {
    "akinsho/flutter-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    ft = "dart",
    config = function()
      require("flutter-tools").setup({
        widget_guides = { enabled = false },
        debugger = { enabled = false },
        closing_tags = { enabled = false }, -- Important!
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

  -- Auto close tags
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    config = true,
  },

  -- Better TypeScript errors
  {
    "dmmulroy/ts-error-translator.nvim",
    ft = { "typescript", "typescriptreact" },
    config = true,
  },
}
