local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

autocmd("VimEnter", {
  pattern = "*",
  callback = function()
    vim.opt.statusline = "%#normal# "
  end,
})

local opt = vim.opt
opt.cmdheight = 0

require "custom.configs.external.format_onsave"

local lpath = vim.fn.stdpath "config" .. "/lua/custom/my-snippets"
vim.g.vscode_snippets_path = lpath
vim.g.snipmate_snippets_path = lpath

-- autocmd("VimEnter",{
--   pattern="*",
--   command="Nvdash",
-- })

-- autocmd("WinEnter", {
--    pattern = "*",
--    callback = function()
--       if vim.bo.buftype ~= "terminal" then
--          vim.opt.statusline = "%!v:lua.require'ui.statusline'.run()"
--       else
--          vim.opt.statusline = "%#normal# "
--       end
--    end,
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
vim.api.nvim_command ('command! OPR lua require("peek").open()')
vim.api.nvim_command ('command! CR lua require("peek").close()')
-- cmp-Spelling
--vim.opt.spell = true
--vim.opt.spelllang = {'en_us'}
