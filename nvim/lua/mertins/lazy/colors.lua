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
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		init = function()
			require("rose-pine").setup({
				variant = "main",
				-- variant = "moon",
				styles = {
					italic = false,
				},
			})
			-- vim.cmd("colorscheme rose-pine")
		end,
	},
	{
		"vague2k/vague.nvim",
		config = function()
			require("vague").setup({
				style = {
					strings = "none",
				},
			})
			-- vim.cmd("colorscheme vague")
		end,
	},
}
