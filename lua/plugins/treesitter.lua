---@diagnostic disable: missing-fields, undefined-field, unused-local
return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		build = ":TSUpdate",
		init = function()
			require("nvim-treesitter").install({
				"c", "lua", "vim", "vimdoc",
				"python", "go", "rust",
				"javascript", "typescript",
				"bash", "json", "yaml", "toml", "html", "css",
				"markdown", "markdown_inline",
				"asm",
			})
		end,
		config = function()
			vim.api.nvim_create_autocmd("FileType", {
				callback = function(args)
					local max_filesize = 100 * 1024 -- 100 KB
					local ok, stats = pcall(vim.uv.fs_stat, vim.api.nvim_buf_get_name(args.buf))
					if ok and stats and stats.size > max_filesize then
						return
					end
					pcall(vim.treesitter.start)
				end,
			})
		end,
	},
}
