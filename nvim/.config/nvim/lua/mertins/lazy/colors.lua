function ColorMyPencils()
	-- vim.cmd.colorscheme("tokyonight")
	-- vim.cmd.colorscheme("rose-pine-moon")
	vim.cmd.colorscheme("catppuccin-macchiato")
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- return {
-- 	{
-- 		"folke/tokyonight.nvim",
-- 		lazy = false,
-- 		priority = 1000,
-- 		config = function()
-- 			ColorMyPencils()
-- 		end,
-- 	},
-- }
-- return {
-- 	"rose-pine/neovim",
-- 	name = "rose-pine",
-- 	config = function()
-- 		require("rose-pine").setup({
-- 			disable_background = true,
-- 			styles = {
-- 				italic = false,
-- 			},
-- 		})
--
-- 		ColorMyPencils()
-- 	end,
-- }
return {
	"catppuccin/nvim",
	name = "catppuccin",
	config = function()
		require("catppuccin").setup({
			styles = {},
		})
		ColorMyPencils()
	end,
}
