return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      vtsls = {
        filetypes = {
          "svelte",
          "vue",
        },
      },
    },
  },
}
