return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      transparent_background = true,
    },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup {
        styles = {
          bold = true,
          italic = true,
          transparency = true,
        },
      }
      vim.cmd "colorscheme rose-pine-moon"
    end,
  },
}
