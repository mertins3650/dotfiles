function ColorMyPencils(color)
	-- color = color or "rose-pine-moon"
	color = color or "catppuccin-frappe"
	vim.cmd.colorscheme(color)
end

return {
	{
		"cdmill/neomodern.nvim",
		name = "neomodern",
		lazy = false,
		priority = 1000,
		config = function()
			require("neomodern").setup({
				theme = "roseprime",
			})
			-- require("neomodern").load()
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = false,
		priority = 1000,
		config = function()
			require("rose-pine").setup({
				disable_background = true,
				styles = {
					italic = false,
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
		end,
	},
}
