return {
	"milanglacier/minuet-ai.nvim",
	config = function()
		require("minuet").setup({
			virtualtext = {
				auto_trigger_ft = { "*" },
				keymap = {
					-- accept whole completion
					accept = "<A-A>",
					-- accept one line
					accept_line = "<A-a>",
					-- accept n lines (prompts for number)
					-- e.g. "A-z 2 CR" will accept 2 lines
					accept_n_lines = "<A-z>",
					-- Cycle to prev completion item, or manually invoke completion
					prev = "<A-n>",
					-- Cycle to next completion item, or manually invoke completion
					next = "<A-p>",
					dismiss = "<A-e>",
				},
			},
			provider = "openai_fim_compatible",
			n_completions = 1, -- recommend for local model for resource saving
			-- I recommend beginning with a small context window size and incrementally
			-- expanding it, depending on your local computing power. A context window
			-- of 512, serves as an good starting point to estimate your computing
			-- power. Once you have a reliable estimate of your local computing power,
			-- you should adjust the context window to a larger value.
			context_window = 2048,
			-- context_window = 512,
			provider_options = {
				openai_fim_compatible = {
					-- For Windows users, TERM may not be present in environment variables.
					-- Consider using APPDATA instead.
					api_key = "TERM",
					name = "LLM",
					end_point = "http://localhost:1234/v1/completions",
					model = "qwen2.5-coder-1.5b-instruct",
					-- model = "qwen2.5-coder1.5b-Q4_K_M-autocmp",
					-- model = "hf.co/bartowski/Qwen2.5-Coder-1.5B-Instruct-GGUF:Q4_K_M",
					optional = {
						max_tokens = 56,
						top_p = 0.9,
					},
				},
			},
		})
	end,
}
