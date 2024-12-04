return {
	"kevinhwang91/nvim-ufo",
	dependencies = { "kevinhwang91/promise-async", "nvim-treesitter/nvim-treesitter" },
	config = function()
		vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
		vim.o.foldenable = true
		vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
		vim.o.foldcolumn = "1"

		vim.opt.foldtext = "v:lua.foldtext_custom()"
		_G.foldtext_custom = function()
			return " "
		end

		require("ufo").setup({
			provider_selector = function(bufnr, filetype, buftype)
				return { "treesitter", "indent" }
			end,
		})
	end,
}
