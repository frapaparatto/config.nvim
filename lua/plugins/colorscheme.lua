--return {
--  {
--    "rebelot/kanagawa.nvim",
--    config = function()
--      vim.cmd("colorscheme kanagawa-dragon")
--      --vim.cmd("colorscheme kanagawa-wave")
--      --vim.cmd("colorscheme kanagawa-lotus")
--    end,
--  },
--}
return {
  {
    "tjdevries/colorbuddy.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("gruvbuddy")
    end,
  },
}
--return {
--  "neanias/everforest-nvim",
--  lazy = false,
--  priority = 1000,
--  config = function()
--    -- Optionally configure and load the colorscheme
--    -- directly inside the plugin declaration.
--    vim.g.everforest_enable_italic = true
--    vim.cmd.colorscheme("everforest")
--  end,
--}
--
--
--return {
--  "metalelf0/black-metal-theme-neovim",
--  lazy = false,
--  priority = 1000,
--  config = function()
--    require("black-metal").setup({
--      -- optional configuration here
--      theme = "marduk",
--      -- theme = "thyrfing",
--    })
--    require("black-metal").load()
--  end,
--}

--return {
--  "vague-theme/vague.nvim",
--  lazy = false,   -- make sure we load this during startup if it is your main colorscheme
--  priority = 1000, -- make sure to load this before all the other plugins
--  config = function()
--    -- NOTE: you do not need to call setup if you don't want to.
--    require("vague").setup({
--      -- optional configuration here
--    })
--    vim.cmd("colorscheme vague")
--    vim.cmd([[
--        highlight Normal guibg=NONE ctermbg=NONE
--        highlight NormalNC guibg=NONE ctermbg=NONE
--        highlight EndOfBuffer guibg=NONE ctermbg=NONE
--        highlight FloatBorder guibg=NONE ctermbg=NONE
--        highlight NormalFloat guibg=NONE ctermbg=NONE
--          ]])
--  end,
--}

--return {
--	"AlexvZyl/nordic.nvim",
--	--'shaunsingh/nord.nvim',
--	lazy = false,
--	priority = 1000,
--	config = function()
--		vim.cmd("colorscheme nordic")
--		--vim.cmd("colorscheme nord")
--		vim.cmd([[
--  highlight Normal guibg=NONE ctermbg=NONE
--  highlight NormalNC guibg=NONE ctermbg=NONE
--  highlight EndOfBuffer guibg=NONE ctermbg=NONE
--  highlight FloatBorder guibg=NONE ctermbg=NONE
--  highlight NormalFloat guibg=NONE ctermbg=NONE
--    ]])
--	end,
--}
--
--return {
--  "webhooked/kanso.nvim",
--  lazy = false,
--  priority = 1000,
--  config = function()
--    vim.cmd("colorscheme kanso")
--  end,
--}
--return {
--  "tjdevries/colorbuddy.nvim",
--  config = function()
--    vim.cmd.colorscheme("gruvbuddy")
--  end,
--}
