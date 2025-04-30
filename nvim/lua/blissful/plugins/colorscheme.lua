return {
	-- "sainnhe/gruvbox-material",
	-- lazy = false,
	-- priority = 1000,
	-- config = function()
	-- 	-- Optionally configure and load the colorscheme
	-- 	-- directly inside the plugin declaration.
	-- 	vim.g.gruvbox_material_enable_italic = true
	-- 	vim.g.gruvbox0_material_background = "medium"
	-- 	vim.g.gruvbox_material_transparent_background = 0
	-- 	vim.g.gruvbox_material_foreground = "material"
	-- 	vim.g.gruvbox_material_visual = "grey"
	-- 	vim.g.gruvbox_material_menu_selection_background = "grey"
	-- 	vim.g.gruvbox_material_show_eob = 0
	-- 	vim.g.gruvbox_material_float_style = "dim"
	--
	-- 	vim.cmd.colorscheme("gruvbox-material")
	--
	-- 	vim.api.nvim_set_hl(0, "Pmenu", { bg = "#1d2021" }) -- Darker gray (or blackish tone)
	-- 	vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#3c3836", blend = 0 }) -- Slightly lighter for selected item
	-- 	vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "#1d2021" })
	-- 	vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#1d2021" })
	-- 	vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = "none" })
	-- end,

	-- "AlexvZyl/nordic.nvim",
	-- lazy = false,
	-- priority = 1000,
	-- config = function()
	-- 	require("nordic").setup({})
	-- 	vim.cmd.colorscheme("nordic")
	-- end,
	-- --
	-- "neanias/everforest-nvim",
	-- -- Optional; default configuration will be used if setup isn't called.
	-- config = function()
	-- 	require("everforest").setup({
	-- 		background = "medium",
	-- 		transparent_background_level = 0,
	-- 		italics = true,
	-- 		disable_italic_comments = false,
	-- 		sign_column_background = "none",
	-- 		ui_contrast = "low",
	-- 		dim_inactive_windows = false,
	-- 		diagnostic_text_highlight = false,
	-- 		diagnostic_virtual_text = "coloured",
	-- 		spell_foreground = false,
	-- 		show_eob = false,
	-- 		float_style = "dim",
	-- 	})
	-- 	vim.cmd.colorscheme("everforest")
	-- 	-- Remove background for suggestion (e.g., completion menu)
	-- 	vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
	-- 	vim.api.nvim_set_hl(0, "PmenuSel", { bg = "none" })
	-- 	vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = "none" })

	-- Remove background for Trouble plugin window
	-- vim.api.nvim_set_hl(0, "TroubleNormal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "TroubleText", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "TroubleCount", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "TroubleFile", { bg = "none" })

	-- Optional: Remove float borders or background if you want a more transparent feel
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "Visual", { bg = "#5f8787", fg = "NONE" }) -- customize bg color
	-- end,

	-- "ramojus/mellifluous.nvim",
	-- -- version = "v0.*", -- uncomment for stable config (some features might be missed if/when v1 comes out)
	-- config = function()
	-- 	require("mellifluous").setup({
	-- 		mellifluous = {
	-- 			neutral = false, -- set this to false for original mellifluous (when it was called meliora theme)
	-- 		},
	-- 	}) -- optional, see configuration section.
	-- 	vim.cmd.colorscheme("mellifluous")
	-- end,

	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "auto", -- latte, frappe, macchiato, mocha
			background = { -- :h background
				light = "frappe",
				dark = "mocha",
			},
			transparent_background = false, -- disables setting the background color.
			show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
			term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
			dim_inactive = {
				enabled = false, -- dims the background color of inactive window
				shade = "dark",
				percentage = 0.15, -- percentage of the shade to apply to the inactive window
			},
			no_italic = false, -- Force no italic
			no_bold = false, -- Force no bold
			no_underline = false, -- Force no underline
			styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
				comments = { "italic" }, -- Change the style of comments
				conditionals = { "italic" },
				loops = {},
				functions = {},
				keywords = {},
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
				operators = { "bold" },
				-- miscs = {}, -- Uncomment to turn off hard-coded styles
			},
			color_overrides = {},
			custom_highlights = function(colors)
				return {
					Pmenu = { bg = colors.none },
				}
			end,
			default_integrations = true,
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				notify = false,
				mini = {
					enabled = true,
					indentscope_color = "",
				},
				-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
			},
		})
		-- setup must be called before loading
		vim.cmd.colorscheme("catppuccin")
	end,

	-- "rose-pine/neovim",
	-- name = "rose-pine",
	-- config = function()
	-- 	require("rose-pine").setup({
	-- 		variant = "auto", -- auto, main, moon, or dawn
	-- 		dark_variant = "main", -- main, moon, or dawn
	-- 		-- dim_inactive_windows = false,
	-- 		-- extend_background_behind_borders = true,
	--
	-- 		styles = {
	-- 			bold = true,
	-- 			italic = false,
	-- 			transparency = false,
	-- 		},
	--
	-- 		highlight_groups = {
	-- 			Comments = { italic = true },
	-- 			operator = { italic = true },
	-- 			conditional = { italic = true },
	-- 		},
	-- 	})
	--
	-- 	vim.cmd("colorscheme rose-pine")
	-- end,
	--
	-- "craftzdog/solarized-osaka.nvim",
	-- lazy = false,
	-- priority = 1000,
	-- opts = {},
	-- config = function()
	-- 	vim.cmd.colorscheme("solarized-osaka")
	-- end,

	-- "rebelot/kanagawa.nvim",
	-- lazy = false,
	-- priority = 1000,
	-- config = function()
	-- 	vim.cmd.colorscheme("kanagawa")
	-- end,

	-- "folke/tokyonight.nvim",
	-- lazy = false,
	-- priority = 1000,
	-- opts = {},
	-- config = function()
	-- 	vim.cmd.colorscheme("tokyonight-night")
	-- end,

	-- "oxfist/night-owl.nvim",
	-- lazy = false, -- make sure we load this during startup if it is your main colorscheme
	-- priority = 1000, -- make sure to load this before all the other start plugins
	-- config = function()
	-- 	-- load the colorscheme here
	-- 	require("night-owl").setup({
	-- 		bold = true,
	-- 		italics = true,
	-- 		underline = true,
	-- 		undercurl = true,
	-- 		transparent_background = false,
	-- 	})
	-- 	vim.cmd.colorscheme("night-owl")
	-- end,

	-- "shaunsingh/nord.nvim",
	-- lazy = false,
	-- priority = 1000,
	--
	-- config = function()
	-- 	vim.g.nord_contrast = true
	-- 	vim.g.nord_borders = false
	-- 	vim.g.nord_disable_background = false
	-- 	vim.g.nord_italic = false
	-- 	vim.g.nord_uniform_diff_background = true
	-- 	vim.g.nord_bold = false
	-- 	vim.cmd.colorscheme("nord")
	--
	-- 	-- Override Telescope matching highlight to remove highlight effect
	-- 	vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = "#81A1C1", bg = "NONE", bold = false })
	--
	-- 	-- Darker popup and selection UI
	-- 	vim.api.nvim_set_hl(0, "Pmenu", { bg = "#2E3440", fg = "#D8DEE9" })
	-- 	vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#3B4252", fg = "#ECEFF4" })
	-- 	vim.api.nvim_set_hl(0, "Visual", { bg = "#434C5E" })
	-- end,
}
