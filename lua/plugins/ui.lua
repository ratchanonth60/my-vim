return {
  -- (A) Base46: Load and SETUP
  "nvim-lua/plenary.nvim",
  {
    "nvchad/base46",
    lazy = true,
    build = function()
      require("base46").load_all_highlights()
    end,
  },
  {
    "nvchad/ui",
    config = function()
      require("nvchad")
    end,
  },
  -- (D) Disable Conflicting LazyVim UI components
  { "nvim-lualine/lualine.nvim", enabled = false },
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = { enabled = false },
      explorer = { enabled = false },
    },
    keys = {
      {
        "<leader>e",
        "<cmd> Neotree float <cr>",
        desc = "File Explorer",
      },
    },
  },
}
