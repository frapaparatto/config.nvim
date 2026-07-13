--[[
return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true

      vim.cmd("colorscheme kanagawa-dragon")

    end,
  },
}
--]]
-- lua/plugins/rose-pine.lua
--[[
return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		vim.cmd("colorscheme rose-pine")
	end
}
--]]

--[[
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
--]]

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
return {
  "vague-theme/vague.nvim",
  lazy = false,   -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other plugins
  config = function()
    -- NOTE: you do not need to call setup if you don't want to.
    require("vague").setup({
      -- optional configuration here
    })
    vim.cmd("colorscheme vague")
  end,
}

--return {
--	"AlexvZyl/nordic.nvim",
--	--'shaunsingh/nord.nvim',
--	lazy = false,
--	priority = 1000,
--	config = function()
--		vim.cmd("colorscheme nordic")
--		--vim.cmd("colorscheme nord")
--	end,
--}
--
