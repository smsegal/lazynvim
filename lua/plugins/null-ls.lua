return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          nls.builtins.formatting.stylua,
          -- nls.builtins.diagnostics.ruff,
          nls.builtins.formatting.usort,
          nls.builtins.formatting.ruff,
          nls.builtins.formatting.black,
          nls.builtins.code_actions.shellcheck,
          nls.builtins.diagnostics.fish,
          nls.builtins.formatting.fish_indent,
          nls.builtins.diagnostics.zsh,
          nls.builtins.diagnostics.hadolint,
          nls.builtins.formatting.prettierd,
          nls.builtins.formatting.beautysh,
        },
      }
    end,
  },
}
