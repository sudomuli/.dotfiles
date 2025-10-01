return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = function(_, opts)
      local module = require("catppuccin.groups.integrations.bufferline")
      if module then
        module.get = module.get_theme
      end
      return opts
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        variant = "moon",
        dim_inactive_windows = true,
        -- styles = {
        --   transparency = true,
        -- },
      })
    end,
  },
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "rose-pine-moon",
      colorscheme = "catppuccin-frappe",
    },
  },

  -- {
  --   "neanias/everforest-nvim",
  --   version = false,
  --   lazy = false,
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   -- Optional; default configuration will be used if setup isn't called.
  --   config = function()
  --     require("everforest").setup({
  --       dim_inactive_windows = true,
  --       background = "hard",
  --       -- Your config here
  --     })
  --   end,
  -- },
  -- {
  --   "rebelot/kanagawa.nvim",
  -- },
}
