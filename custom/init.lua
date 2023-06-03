-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
local opt = vim.opt
opt.foldcolumn = "1"
opt.foldlevel = 1
opt.foldnestmax = 2
opt.foldlevelstart = 99
opt.foldenable = true
opt.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
opt.signcolumn = "auto:1-2"

-- Define custom commands for "peek.nvim" plugin
vim.api.nvim_command('command! OpenMark lua require("peek").open()') -- you can change the command
vim.api.nvim_command('command! CloseMark lua require("peek").close()') -- and also here
