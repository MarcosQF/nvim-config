require('blink.cmp').setup({
    completion = {
        list = {
            selection = {
                preselect = false,
                auto_insert = true,
            }
        }
    },

    keymap = {
        preset = 'enter',
        ['<Tab>'] = { 'select_next', 'snippet_forward', 'fallback' },
        ['<S-Tab>'] = { 'select_prev', 'snippet_backward', 'fallback' },
    },

    sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' }
    },

    fuzzy = {
        implementation = "lua"
    }
})
