return {
	"f-person/auto-dark-mode.nvim",
	opts = {
		set_dark_mode = function()
			-- Ensure that the theme is explicitly set to mocha for dark mode
			vim.cmd("lua require('catppuccin').setup({ flavour = 'macchiato' })")
			vim.cmd("colorscheme catppuccin")
		end,

		set_light_mode = function()
			-- Ensure that the theme is explicitly set to frappe for light mode
			vim.cmd("lua require('catppuccin').setup({ flavour = 'frappe' })")
			vim.cmd("colorscheme catppuccin")
		end,

		update_interval = 3000, -- Ensure it's set to an appropriate interval
		fallback = "dark", -- Use dark mode as fallback if detection fails
	},
}
