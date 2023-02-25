local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

local sources = {
    code_actions.eslint_d,
    diagnostics.cmake_lint,
    diagnostics.golangci_lint,
    diagnostics.cpplint,
    diagnostics.protolint,
    diagnostics.pycodestyle,
    formatting.clang_format,
    formatting.prettier,
    formatting.clang_format,
    formatting.black,
    formatting.rustfmt,
    formatting.goimports,
}

null_ls.setup({
    sources,
})
