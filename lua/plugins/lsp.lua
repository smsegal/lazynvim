return {
  "neovim/nvim-lspconfig",
  opts = {
    autoformat = false,
    ---@type lspconfig.options
    servers = {
      pylsp = {
        mason = false,
        settings = {
          pylsp = {
            plugins = {
              rope_autoimport = { enabled = true },
            },
          },
        },
      },
    },
  },
}
