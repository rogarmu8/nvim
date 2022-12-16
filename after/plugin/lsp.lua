local lsp = require('lsp-zero')

lsp.preset('recommended')
local cmp = require('cmp')
local cmp_mappings = lsp.defaults.cmp_mappings({
	['C-Space'] = cmp.mapping.complete(),
})


lsp.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = false}
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opt)
end)

lsp.setup()

