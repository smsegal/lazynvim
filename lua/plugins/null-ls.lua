return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          nls.builtins.code_actions.shellcheck,
          nls.builtins.diagnostics.fish,
          nls.builtins.diagnostics.hadolint,
          nls.builtins.diagnostics.mypy,
          nls.builtins.diagnostics.ruff,
          nls.builtins.diagnostics.zsh,
          nls.builtins.formatting.beautysh,
          nls.builtins.formatting.black,
          nls.builtins.formatting.fish_indent,
          nls.builtins.formatting.prettierd,
          nls.builtins.formatting.ruff,
          nls.builtins.formatting.stylua,
          nls.builtins.formatting.usort,
          nls.builtins.formatting.alejandra,
        },
      }
    end,
  },
}
