---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-p>"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "󰘳 Find files" },
  },
}

-- more keybinds!
M.diagnostics = {
  n = {
    ["<leader>tt"] = { "<cmd>TroubleToggle<cr>", "󰔫 Toggle warnings" },
    ["<leader>td"] = { "<cmd>TodoTrouble keywords=TODO,FIX,FIXME,BUG,TEST,NOTE<cr>", " Todo/Fix/Fixme" },
    ["<leader>el"] = { "<cmd>ErrorLensToggle<cr>", "󱇭 Toggle error lens" },
    ["<leader>ft"] = { "<cmd>:TodoTelescope<cr>", " Telescope TODO" },
    ["<Leader>ls"] = {
      function()
        require("lsp_lines").toggle()
      end,
      "Toggle lsp_lines",
    },
  },
}

M.telescope = {
  n = {
    ["<leader>fk"] = { "<cmd>Telescope keymaps<CR>", " Find keymaps" },
    ["<leader>fs"] = { "<cmd>Telescope lsp_document_symbols<CR>", " Find document symbols" },
    ["<leader>fr"] = { "<cmd>Telescope frecency<CR>", " Recent files" },
    ["<leader>fu"] = { "<cmd>Telescope undo<CR>", " Undo tree" },
    ["<leader>fz"] = {
      "<cmd>Telescope current_buffer_fuzzy_find fuzzy=false case_mode=ignore_case<CR>",
      " Find current file",
    },
  },
}

--peek
return M
