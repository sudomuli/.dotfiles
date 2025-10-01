return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      require("lualine").setup({
        options = {
          theme = "monokai-pro",
          component_separators = "",
          section_separators = { left = "", right = "" },
        },
        sections = {
          lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
          lualine_b = { "filename", "branch" },
          lualine_c = {
            "%=", --[[ add your center compoentnts here in place of this comment ]]
          },
          lualine_x = {},
          lualine_y = { "filetype", "progress" },
          lualine_z = {
            { "location", separator = { right = "" }, left_padding = 2 },
          },
        },
        inactive_sections = {
          lualine_a = { "filename" },
          lualine_b = {},
          lualine_c = {},
          lualine_x = {},
          lualine_y = {},
          lualine_z = { "location" },
        },
        tabline = {},
        extensions = {},
      })
    end,
  },
  -- buffer line
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    -- keys = {
    --   { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
    --   { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    -- },
    opts = {
      options = {
        -- mode = "tabs",
        -- separator_style = "slant",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },
  -- Snack config
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      scroll = {
        enabled = false,
      },
      image = { enabled = true },
      animate = {
        enabled = false,
      },
      indent = {
        enabled = true,
        animate = {
          enabled = false,
        },
      },
      statuscolumn = { enabled = true },
      picker = { enabled = true },
    },
  },
}
