return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		build = ":TSUpdate",
		init = function()
			vim.api.nvim_create_autocmd("FileType", {
				callback = function(args)
					local max_filesize = 100 * 1024
					local ok, stats = pcall(vim.uv.fs_stat, vim.api.nvim_buf_get_name(args.buf))
					if ok and stats and stats.size > max_filesize then
						return
					end
					pcall(vim.treesitter.start)
				end,
			})

			local ensureInstalled = {
				"c", "lua", "vim", "vimdoc",
				"python", "go", "rust",
				"javascript", "typescript",
				"bash", "json", "yaml", "toml", "html", "css",
				"markdown", "markdown_inline",
				"asm",
			}
			local alreadyInstalled = require("nvim-treesitter.config").get_installed()
			local parsersToInstall = vim.iter(ensureInstalled)
				:filter(function(parser)
					return not vim.tbl_contains(alreadyInstalled, parser)
				end)
				:totable()
			if #parsersToInstall > 0 then
				require("nvim-treesitter").install(parsersToInstall)
			end
		end,
	},
}
