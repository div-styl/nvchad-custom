---@type_MappingsTable
local M = {}

M.general = {
	n = {
		[";"] = { ":", "enter command mode", opts = { nowait = true } },
	},
}

-- more keybinds!

M.trouble = {
	n = {
		["<leader>tt"] = {
			"<cmd> TroubleToggle <CR>",
			"Toggle Trouble",
		},
	},
}
M.peek = {
	n = {
		["<leader>mo"] = {
			function()
				require("peek").open()
			end,
			"Open markdown preview",
		},
		["<leader>mq"] = {
			function()
				require("peek").close()
			end,
			"Close markdown preview",
		},
	},
}
return M
