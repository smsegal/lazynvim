return {
  "neovim/nvim-lspconfig",
  opts = {
    autoformat = false,
    ---@type lspconfig.options
    servers = {
      nil_ls = { mason = false },
      pyright = { mason = false },
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
