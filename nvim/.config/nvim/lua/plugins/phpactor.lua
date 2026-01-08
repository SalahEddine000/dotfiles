return {
  {
    "gbprod/phpactor.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "neovim/nvim-lspconfig",
    },
    ft = "php",
    opts = {
      install = {
        -- Point this to the Mason binary location
        bin = vim.fn.stdpath("data") .. "/mason/bin/phpactor",
      },
      lspconfig = {
        -- Set this to false if you want Mason/LSPConfig to
        -- handle the LSP setup (recommended for your setup)
        enabled = false,
      },
    },
  },
}
