local local_plugins = {
	{
		"theprimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon")

			harpoon:setup()

			vim.keymap.set("n", "<leader>ha", function()
				harpoon:list():add()
			end, { desc = "[H]arpoon [A]ppend" })
			vim.keymap.set("n", "<leader>ho", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end, { desc = "[H]arpoon [O]verview" })

			vim.keymap.set("n", "<C-h>", function()
				harpoon:list():select(1)
			end)
			vim.keymap.set("n", "<C-j>", function()
				harpoon:list():select(2)
			end)
			vim.keymap.set("n", "<C-k>", function()
				harpoon:list():select(3)
			end)
			vim.keymap.set("n", "<C-l>", function()
				harpoon:list():select(4)
			end)
			vim.keymap.set("n", "<leader>rh", function()
				harpoon:list():replace_at(1)
			end, { desc = "harpoon replace [H]" })
			vim.keymap.set("n", "<leader>rj", function()
				harpoon:list():replace_at(2)
			end, { desc = "harpoon replace [J]" })
			vim.keymap.set("n", "<leader>rk", function()
				harpoon:list():replace_at(3)
			end, { desc = "harpoon replace [K]" })
			vim.keymap.set("n", "<leader>rl", function()
				harpoon:list():replace_at(4)
			end, { desc = "harpoon replace [L]" })
		end,
	},
}

return local_plugins
