return {
  "TimUntersberger/neogit",
  dependencies = { "nvim-lua/plenary.nvim", "sindrets/diffview.nvim" },
  cmd = "Neogit",
  opts = {
    integrations = { diffview = true },
    use_magit_keybindings = true,
  },
  keys = {
    {
      "<leader>gn",
      function()
        local neogit = require("neogit")
        local buffer_directory = vim.fs.dirname(vim.api.nvim_buf_get_name(0))
        neogit.open({ cwd = buffer_directory })
      end,
      desc = "Neogit (buffer cwd)",
    },
  },
}
