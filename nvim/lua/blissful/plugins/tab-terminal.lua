vim.keymap.set("t", "<esc>", "<c-\\><c-n>")

local state = {
	buf = -1,
}

local function full_terminal()
	if state.buf ~= -1 and vim.api.nvim_buf_is_valid(state.buf) then
		-- Buffer exists, check if it is visible
		local wins = vim.fn.win_findbuf(state.buf)
		if #wins > 0 then
			-- Terminal is visible, close the tab
			vim.cmd("tabclose")
			return
		end
	end

	-- Either buffer is invalid or not visible, open a new tab
	vim.cmd("tabnew")
	local buf = vim.api.nvim_buf_is_valid(state.buf) and state.buf or vim.api.nvim_create_buf(false, true)
	vim.api.nvim_win_set_buf(0, buf)

	if vim.bo[buf].buftype ~= "terminal" then
		vim.cmd("terminal")
	end

	vim.cmd("startinsert")
	state.buf = vim.api.nvim_get_current_buf()
end

vim.api.nvim_create_user_command("FullTerminal", full_terminal, {})
vim.keymap.set({ "n", "t" }, "<D-/>", full_terminal)

return {}
