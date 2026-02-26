return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.formatting.rubocop,
      },
    })

    -- Format on save (completely silent)
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*",
      callback = function()
        -- Suppress all messages during formatting
        local ok, _ = pcall(vim.lsp.buf.format, {
          async = false,
          timeout_ms = 2000,
        })
      end,
    })
  end,
}
