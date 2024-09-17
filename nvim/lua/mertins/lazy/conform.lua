local prettier = { "prettierd", "prettier" }

return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				css = { prettier },
				graphql = { prettier },
				handlebars = { prettier },
				html = { prettier },
				javascript = { prettier },
				javascriptreact = { prettier },
				json = { prettier },
				jsonc = { prettier },
				jsx = { prettier },
				markdown = { prettier },
				react = { prettier },
				scss = { prettier },
				yaml = { prettier },
			},
			opts = {
				formatters = {
					prettier = {
						prepend_args = { "--single-quote" },
					},
				},
			},
			format_on_save = {
				async = false,
				timeout_ms = 50000,
				lsp_fallback = true,
				stop_after_first = true, -- New option to stop after the first formatter
			},
		})

		vim.keymap.set("n", "<leader>ns", function()
			conform.format({
				async = false,
				timeout_ms = 50000,
				lsp_fallback = true,
				stop_after_first = true, -- New option used here as well
			})
		end, { desc = "[C]onform [F]ormat" })
	end,
}
