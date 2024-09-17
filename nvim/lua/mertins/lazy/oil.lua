return {
  "stevearc/oil.nvim",
  dependencies = {
    "echasnovski/mini.nvim",
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    require("oil").setup({
      columns = { "icon" },
      default_file_explorer = true,
    })
    vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>", { desc = "Open parent directory" })
  end,
}
