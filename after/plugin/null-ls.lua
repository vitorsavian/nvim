local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {
    formatting.goimports,
    formatting.rustfmt,
    diagnostics.credo,
    diagnostics.cpplint,
    formatting.mix,
    formatting.clang_format
}

null_ls.setup({
    sources,
})
