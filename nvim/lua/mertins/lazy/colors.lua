return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		init = function()
			require("catppuccin").setup({
				flavour = "macchiato",
				no_italics = false,
				styles = {
					conditionals = {},
				},
			})
			vim.cmd("colorscheme catppuccin")
		end,
	},
}
