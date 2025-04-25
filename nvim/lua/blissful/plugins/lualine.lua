return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({

			options = {
				theme = "rose-pine",
			},

			-- sections = {
			-- 	lualine_a = { "mode" },
			-- 	-- lualine_b = { "branch", "diff", "diagnostics" },
			-- 	lualine_b = {
			-- 		{ "branch", color = { fg = "#a7c080", bg = "none", gui = "bold" } },
			-- 		{ "diff", color = { fg = "#7fbbb3", bg = "none" } },
			-- 		{ "diagnostics", color = { fg = "#e67e80", bg = "none" } },
			-- 	},
			-- 	lualine_c = { "filename" },
			-- 	lualine_x = { "fileformat", "filetype" },
			-- 	lualine_y = { "progress" },
			-- 	lualine_z = {},
			-- 	-- lualine_z = { "location" },
			-- },
		})
	end,
}
