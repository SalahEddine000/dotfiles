return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "tailwindcss-language-server",
        "html-lsp",
        "css-lsp",
        "json-lsp",
        "bash-language-server",
        "prettier",
        "stylua",
        "shfmt",
        "eslint_d",
        "phpactor",
      },
    },
  },

  -- Add the bridge
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
    opts = {
      ensure_installed = {
        "ts_ls", -- note: lspconfig name
        "tailwindcss",
        "html",
        "cssls",
        "jsonls",
        "bashls",
        "phpactor",
        -- etc for other LSPs
      },
      automatic_enable = true,
    },
  },
}
