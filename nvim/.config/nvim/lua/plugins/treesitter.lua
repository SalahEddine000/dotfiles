return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "php",
        "blade",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "bash",
        "dart",
        "json",
        "lua",
        "vim",
        "markdown",
        "markdown_inline",
      },
      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true },
    },
  },
}
