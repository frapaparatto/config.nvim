--vim.opt.number = true
--vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Leader key
vim.g.mapleader = " "

-- File operations
vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")
vim.keymap.set("n", "<leader>fq", ":q!<CR>")

-- Pane navigation
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")

-- Plugins
vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal left<CR>")
vim.keymap.set("n", "<leader>pm", ":Lazy<CR>")

-- Search
vim.opt.hlsearch = true
vim.keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>")

-- Disable arrow keys
for _, mode in ipairs({ "n", "i", "v" }) do
  vim.keymap.set(mode, "<Up>", '<ESC>:echoe "Use k"<CR>')
  vim.keymap.set(mode, "<Down>", '<ESC>:echoe "Use j"<CR>')
  vim.keymap.set(mode, "<Right>", '<ESC>:echoe "Use l"<CR>')
  vim.keymap.set(mode, "<Left>", '<ESC>:echoe "Use h"<CR>')
end

-- Insert mode escape
vim.keymap.set("i", "jk", "<ESC>")
vim.o.timeout = true
vim.o.timeoutlen = 250

-- Quickfix (Option-n/p)
vim.keymap.set("n", "<M-n>", ":cnext<CR>")
vim.keymap.set("n", "<M-p>", ":cprev<CR>")
vim.keymap.set("n", "<leader>xo", ":copen<CR>")
vim.keymap.set("n", "<leader>xc", ":cclose<CR>")
-- Load all diagnostics to quickfix
vim.keymap.set("n", "<leader>xq", function()
  vim.diagnostic.setqflist()
end)
-- Location list (Option-j/k)
vim.keymap.set("n", "<M-j>", ":lnext<CR>")
vim.keymap.set("n", "<M-k>", ":lprev<CR>")
vim.keymap.set("n", "<leader>lo", ":lopen<CR>")
vim.keymap.set("n", "<leader>lc", ":lclose<CR>")

-- Load all diagnostics from current file to location list
vim.keymap.set("n", "<leader>lq", function()
  vim.diagnostic.setloclist()
end)
