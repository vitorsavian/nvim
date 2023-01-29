local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'sumneko_lua',
	'rust_analyzer',
	'gopls'
})

-- Fix Undefined global 'vim'
lsp.configure('sumneko_lua', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

lsp.configure('gopls', {
    formatters = {
        goimports = {
            command = "goimports",
            args = {"-local", vim.fn.expand("<afile>")},
            format_on_save = true,
        }
    },
    format_options = { goimports = true }
})

lsp.setup()
