return {
  "ThePrimeagen/harpoon",
  config = function()
    require("harpoon").setup({
      tabline = true,
    })

    vim.keymap.set(
      "n",
      "<leader>af",
      "<cmd>lua require('harpoon.mark').add_file()<CR>",
      { desc = "Harpoon add file" }
    )
    vim.keymap.set(
      "n",
      "<leader>mf",
      "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>",
      { desc = "Harpoon menu" }
    )
    vim.keymap.set("n", "<C-n>", "<cmd>lua require('harpoon.ui').nav_next()<CR>", { desc = "Harpoon next" })
    vim.keymap.set("n", "<C-p>", "<cmd>lua require('harpoon.ui').nav_prev()<CR>", { desc = "Harpoon prev" })

    vim.cmd("highlight! link HarpoonInactive Comment")
    vim.cmd("highlight! link HarpoonNumberInactive Comment")
  end,
}
