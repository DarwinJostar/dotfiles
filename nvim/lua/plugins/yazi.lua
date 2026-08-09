return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("yazi").setup({})
    vim.keymap.set("n", "<leader>yy", "<cmd>Yazi<cr>")
  end,
}
