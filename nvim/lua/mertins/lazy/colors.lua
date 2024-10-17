function ColorMyPencils(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		opts = {},
		config = function()
			ColorMyPencils()
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		init = function()
			require("catppuccin").setup({
				flavour = "mocha",
				no_italics = false,
				styles = {
					conditionals = {},
				},
			})
			--vim.cmd("colorscheme catppuccin")
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		init = function()
			require("rose-pine").setup({
				variant = "main",
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
