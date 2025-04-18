return {
  "shaunsingh/nord.nvim",
  priority = 1000,
  config = function()
    vim.g.nord_italic = false
    vim.g.nord_bold = true
    vim.cmd("colorscheme nord")
    vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = "#88C0D0", bold = false })
  end
}


