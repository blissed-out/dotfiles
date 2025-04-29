vim.keymap.set("t", "<esc>", "<c-\\><c-n>")

local state = {
	buf = -1,
}

local function full_terminal()
	if state.buf ~= -1 and vim.api.nvim_buf_is_valid(state.buf) then
		-- Buffer exists, check if it is visible
		local wins = vim.fn.win_findbuf(state.buf)
		if #wins > 0 then
			-- Terminal is visible, hide it (close the window)
			vim.api.nvim_win_close(wins[1], true)
			return
		end
	end

	-- Either buffer is invalid or not visible, open a new split
	vim.cmd("belowright split")
	vim.cmd("resize " .. math.floor(vim.o.lines * 0.2)) -- << added resize here (30% of total height)

	local buf = nil
	if vim.api.nvim_buf_is_valid(state.buf) then
		buf = state.buf
	else
		buf = vim.api.nvim_create_buf(false, true)
	end

	vim.api.nvim_win_set_buf(0, buf)

	if vim.bo[buf].buftype ~= "terminal" then
		vim.cmd("terminal")
	end

	vim.cmd("startinsert")
	state.buf = vim.api.nvim_get_current_buf()
end

vim.api.nvim_create_user_command("Floaterminal", full_terminal, {})
vim.keymap.set({ "n", "t" }, "<D-j>", full_terminal)

return {}
