return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		require("rose-pine").setup({
			variant = "auto", -- auto, main, moon, or dawn
			dark_variant = "main", -- main, moon, or dawn
			-- dim_inactive_windows = false,
			-- extend_background_behind_borders = true,
			--
			styles = {
				bold = true,
				italic = false,
				transparency = false,
			},

			highlight_groups = {
				Comments = { italic = true },
			},
		})
		vim.cmd("colorscheme rose-pine")
	end,

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
	-- 	vim.g.nord_contrast = false
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
