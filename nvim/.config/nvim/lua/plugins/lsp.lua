return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- PHP

        -- JavaScript/TypeScript
        tsserver = {
          settings = {
            typescript = {
              inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayFunctionParameterTypeHints = true,
              },
            },
          },
        },

        -- Tailwind CSS
        tailwindcss = {
          filetypes = {
            "html",
            "css",
            "scss",
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "vue",
            "php",
            "blade",
          },
        },

        -- HTML
        html = {},

        -- CSS
        cssls = {},

        -- JSON
        jsonls = {},

        -- Bash
        bashls = {},

        -- Dart/Flutter
        dartls = {
          settings = {
            dart = {
              analysisExcludedFolders = {
                vim.fn.expand("$HOME/.pub-cache"),
              },
              enableSdkFormatter = true,
            },
          },
        },
      },
    },
  },
}
