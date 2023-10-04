local lsp = require('lsp-zero').preset({})
local cmp = require('cmp')

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'rust_analyzer',
	'lua_ls',
	'pyright',
	'clangd'
})



lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("i", "<C-Space>", cmp.mapping.confirm({select = true}))
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>ws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>ds", function() vim.lsp.buf.document_symbol() end, opts)
  vim.keymap.set("n", "<leader>cd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>cr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>cn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
