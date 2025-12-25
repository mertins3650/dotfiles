return {
	"saghen/blink.cmp",
	version = "*",
	dependencies = { "L3MON4D3/LuaSnip", version = "v2.*", "milanglacier/minuet-ai.nvim" },
	opts = {
		keymap = { ["<C-k>"] = nil },
		snippets = { preset = "luasnip" },
		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer", "minuet" },
			providers = {
				minuet = {
					name = "minuet",
					module = "minuet.blink",
					async = true,
					-- Should match minuet.config.request_timeout * 1000,
					-- since minuet.config.request_timeout is in seconds
					timeout_ms = 3000,
					-- score_offset = 50, -- Gives minuet higher priority among suggestions
				},
			},
		},
		completion = {
			trigger = { prefetch_on_insert = false },
			menu = {
				draw = {
					columns = { { "label", "label_description", gap = 1 }, { "kind" } },
				},
			},
		},
		signature = { enabled = true },
	},
	opts_extend = { "sources.default" },
}
