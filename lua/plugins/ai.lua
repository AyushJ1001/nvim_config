return {
  "olimorris/codecompanion.nvim",
  config = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    adapters = {
      gemini = function()
        return require("codecompanion.adapters").extend("gemini", {
          schema = {
            model = {
              default = "gemini-2.5-pro-exp-03-25",
            },
          },
        })
      end,
    },
    display = {
      action_pallete = {
        provider = "snacks",
      },
    },
    strategies = {
      chat = {
        adapter = "gemini",
      },
      inline = {
        adapter = "gemini",
      },
      cmd = {
        adapter = "gemini",
      },
    },
  },
  keys = {
    { "<leader>aa", ":CodeCompanion\n", mode = { "n", "v" }, desc = "Ask AI" },
    { "<leader>ac", ":CodeCompanionChat\n", mode = { "n", "v" }, desc = "AI Chat" },
  },
}
