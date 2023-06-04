require('cmp').setup({
    sources = {
        {
            name = 'spell',
            option = {
                keep_all_entries = true,
                enable_in_context = function()
                    return true
                end,
            },
        },
    },
})
