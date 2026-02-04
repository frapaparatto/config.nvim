vim.opt.number = true
vim.opt.relativenumber = true

-- Sync clipboard between OS and Neovim
vim.opt.clipboard = "unnamedplus"

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Set <space> as the leader key
vim.g.mapleader = " "

-- File operations
vim.keymap.set("n", "<leader>w", ":write<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", ":quit<CR>", { desc = "Quit" })
vim.keymap.set("n", "<leader>fq", ":q!<CR>", { desc = "Force quit" })

-- Navigate vim panes
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { desc = "Move to pane above" })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { desc = "Move to pane below" })
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { desc = "Move to left pane" })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { desc = "Move to right pane" })

-- Plugin shortcuts
vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal left<CR>", { desc = "Toggle file tree" })
vim.keymap.set("n", "<leader>pm", ":Lazy<CR>", { desc = "Plugin manager" })

-- Set highlight on search, clear on pressing ESC
vim.opt.hlsearch = true
vim.keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

-- Disable arrow keys
for _, mode in ipairs({ "n", "i", "v" }) do
  vim.keymap.set(mode, "<Up>", '<ESC>:echoe "Use k"<CR>')
  vim.keymap.set(mode, "<Down>", '<ESC>:echoe "Use j"<CR>')
  vim.keymap.set(mode, "<Right>", '<ESC>:echoe "Use l"<CR>')
  vim.keymap.set(mode, "<Left>", '<ESC>:echoe "Use h"<CR>')
end

-- Set jk as Esc in insert mode
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })
vim.o.timeout = true
vim.o.timeoutlen = 250

-- Quickfix List Navigation
vim.keymap.set("n", "<leader>xo", ":copen<CR>", { desc = "Open quickfix" })
vim.keymap.set("n", "<leader>xc", ":cclose<CR>", { desc = "Close quickfix" })
vim.keymap.set("n", "]q", ":cnext<CR>", { desc = "Next quickfix item" })
vim.keymap.set("n", "[q", ":cprev<CR>", { desc = "Previous quickfix item" })
vim.keymap.set("n", "]Q", ":clast<CR>", { desc = "Last quickfix item" })
vim.keymap.set("n", "[Q", ":cfirst<CR>", { desc = "First quickfix item" })

-- Location List (per-window)
vim.keymap.set("n", "<leader>lo", ":lopen<CR>", { desc = "Open location list" })
vim.keymap.set("n", "<leader>lc", ":lclose<CR>", { desc = "Close location list" })
vim.keymap.set("n", "]l", ":lnext<CR>", { desc = "Next location item" })
vim.keymap.set("n", "[l", ":lprev<CR>", { desc = "Previous location item" })
