local M = {}

local colors = require("doom-one-pro.colors")
local settings = require("doom-one-pro.settings")

M.set_colorscheme = function()
	-- TODO: Restore plugins integration here
	-- doom_one.set_colorscheme = function()
	-- Color cursor
	vim.opt.guicursor = "n-v-c:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor25-Cursor"
	vim.cmd("hi ActiveWindow guibg=" .. colors.bg)
	vim.cmd("hi InactiveWindow guibg=" .. colors.bg)

	-- Set fake transparency
	-- vim.opt.pumblend = 20

	-- Set for builtin terminal
	for index, color in ipairs(settings.terminal_colors) do
		vim.g[index] = color
	end

	for group, hl in pairs(settings.text_colors) do
		vim.api.nvim_set_hl(0, "Text" .. group, { fg = hl })
		vim.api.nvim_set_hl(0, "Text" .. group .. "Bold", { fg = hl, bold = true })
	end

	for group, values in pairs(settings.tokens) do
		vim.api.nvim_set_hl(0, "" .. group, values)
	end

	for _, pair in ipairs(settings.treesitter_tokens) do
		local group = pair[1]
		local values = pair[2]
		vim.api.nvim_set_hl(0, "@" .. group, values)
	end
end

return M
