function ColorMyPencils(color)
	-- color = color or "rose-pine-moon"
	color = color or "catppuccin-mocha"
	-- color = color or "tokyonight"
	vim.cmd.colorscheme(color)
end

return {
	{
		"folke/tokyonight.nvim",
		name = "tokyonight",
		config = function()
			require("tokyonight").setup({
				transparent = true,
				style = "moon",
				styles = {
					keywords = { italic = false },
				},
			})
			ColorMyPencils()
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				transparent_background = true,
				no_italic = false,
				styles = {
					conditionals = {},
					miscs = {},
					keywords = {},
				},
			})
			ColorMyPencils()
		end,
	},
}
