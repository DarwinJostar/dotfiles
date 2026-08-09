return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.config").setup({
      ensure_installed = { "markdown", "markdown_inline", "bash" },
      highlight = { enable = true },
    })
  end,
}
