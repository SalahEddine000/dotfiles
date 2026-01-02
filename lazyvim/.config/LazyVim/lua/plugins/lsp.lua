return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        dartls = {
          settings = {
            dart = {
              analysisExcludedFolders = {
                vim.fn.expand("$HOME/.pub-cache"),
              },
              enableSdkFormatter = false,
            },
          },
        },
      },
    },
  },
}
