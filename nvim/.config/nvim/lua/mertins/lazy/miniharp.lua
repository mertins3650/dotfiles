return {
	"vieitesss/miniharp.nvim",

	opts = {
		autoload = true,
		autosave = true,
		show_on_autoload = false,
		ui = {
			position = "center",
			show_hints = false,
			enter = true,
		},
	},

	keys = {
		{
			"<leader>m",
			function()
				require("miniharp").toggle_file()
			end,
			desc = "miniharp: toggle file mark",
		},
		{
			"<leader>l",
			function()
				require("miniharp").show_list()
			end,
			desc = "miniharp: toggle marks list",
		},
		{
			"<leader>L",
			function()
				require("miniharp").enter_list()
			end,
			desc = "miniharp: toggle marks list",
		},
		{
			"<leader>1",
			function()
				require("miniharp").go_to(1)
			end,
		},
		{
			"<leader>2",
			function()
				require("miniharp").go_to(2)
			end,
		},
		{
			"<leader>3",
			function()
				require("miniharp").go_to(3)
			end,
		},
		{
			"<leader>4",
			function()
				require("miniharp").go_to(4)
			end,
		},
	},
}
