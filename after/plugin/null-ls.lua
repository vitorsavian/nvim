local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

local sources = { 
	formatting.goimports,
}

null_ls.setup({
	sources = {
		formatting.goimports,
	}
})
