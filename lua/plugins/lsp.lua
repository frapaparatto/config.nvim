-- lsp config
return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "folke/lazydev.nvim",
      ft = "lua",
      opts = {
        library = {
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
      },
    },
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "pyright",
        "gopls",
        "rust_analyzer",
        "clangd",
        "ruff",
        "bashls",
      },
      handlers = {
        function(server_name)
          vim.lsp.config(server_name, {
            capabilities = capabilities,
          })
          vim.lsp.enable(server_name)
        end,

        ["gopls"] = function()
          vim.lsp.config("gopls", {
            capabilities = capabilities,
            settings = {
              gopls = {
                completeUnimported = true,
                usePlaceholders = true,
              },
            },
          })
          vim.lsp.enable("gopls")
        end,

        ["clangd"] = function()
          vim.lsp.config("clangd", {
            capabilities = capabilities,
            cmd = {
              "clangd",
              "--background-index",
              "--clang-tidy",
              "--completion-style=detailed",
              "--header-insertion=iwyu",
              "--header-insertion-decorators",
              "--pch-storage=memory",
            },
            settings = {
              clangd = {
                fallbackFlags = { "-std=c++17" },
              },
            },
          })
          vim.lsp.enable("clangd")
        end,
      },
    })

    vim.diagnostic.config({
      virtual_text = {
        severity = { min = vim.diagnostic.severity.WARN },
        source = "if_many",
      },
      signs = true,
      underline = true,
      update_in_insert = false,
      float = {
        focusable = false,
        style = "minimal",
        source = "always",
        header = "",
        prefix = "",
      },
      severity_sort = true,
    })

    -- LSP Navigation & Actions
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
    vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Go to references" })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { desc = "Go to type definition" })

    vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Format buffer" })
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })

    -- Diagnostics Navigation
    vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostic" })
    vim.keymap.set("n", "<leader>xq", vim.diagnostic.setqflist, { desc = "Diagnostics to quickfix" })
    vim.keymap.set("n", "<leader>xl", vim.diagnostic.setloclist, { desc = "Buffer diagnostics to loclist" })
  end,
}
