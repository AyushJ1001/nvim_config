return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              semanticTokens = true,
              noSemanticNumber = true,
              noSemanticString = true,
            },
          },
        },
      },
      inlay_hints = { enabled = false },
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      lsp = {
        hover = {
          silent = true,
        },
      },
    },
  },
}
