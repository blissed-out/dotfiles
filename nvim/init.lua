require("blissful.core")
require("blissful.lazy")
-- if vim.g.neovide then
-- 	vim.o.guifont = "IBM Plex Mono:h18"
--
-- 	vim.opt.linespace = 35
-- 	vim.g.neovide_scale_factor = 1.0
-- 	local change_scale_factor = function(delta)
-- 		vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
-- 	end
-- 	vim.keymap.set("n", "<C-=>", function()
-- 		change_scale_factor(1.25)
-- 	end)
-- 	vim.keymap.set("n", "<C-->", function()
-- 		change_scale_factor(1 / 1.25)
-- 	end)
-- end

-- vim.api.nvim_create_autocmd("TermOpen", {
-- 	group = vim.api.nvim_create_augroup("custom-term-open", { clear = true }),
-- 	callback = function()
-- 		vim.opt.number = false
-- 		vim.opt.relativenumber = false
-- 	end,
-- })
