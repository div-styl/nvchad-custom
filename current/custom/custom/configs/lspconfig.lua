local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "pyright", "texlab" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- 
-- lspconfig.pyright.setup { blabla}
lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities,

  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
  }
}

vim.api.nvim_exec([[
  augroup BashLSP
    autocmd!
    autocmd BufReadPost * if &filetype == '' || &filetype == 'sh' | lua start_bash_language_server() | endif
  augroup END
]], false)

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'sh',
  callback = function()
    vim.lsp.start({
      name = 'bash-language-server',
      cmd = { 'bash-language-server', 'start' },
    })
  end,
})

lspconfig.diagnosticls.setup{
  filetypes = {
    sh = 'shellcheck',
  },
}

require'lspconfig'.texlab.setup{}
