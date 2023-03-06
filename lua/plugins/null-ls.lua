return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
      local nls = require("null-ls")
      local nls_helpers = require("null-ls.helpers")
      local nls_methods = require("null-ls.methods")
      local FORMATTING = nls_methods.FORMATTING
      local nix_fmt = {
        method = FORMATTING,
        name = "nix fmt",
        filetypes = { "nix" },
        factory = nls_helpers.formatter_factory {
          command = "nix fmt",
          -- args = { "--quiet" },
        },
      }
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
        },
      }
    end,
  },
}
