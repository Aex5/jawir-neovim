return {
	"kevinhwang91/nvim-ufo",
	dependencies = { "kevinhwang91/promise-async", "nvim-treesitter/nvim-treesitter" },
	config = function()
		-- Pengaturan folding dasar
		vim.o.foldcolumn = "1" -- '0' is also an option
		vim.o.foldlevel = 99 -- Value tinggi untuk memastikan folding berfungsi
		vim.o.foldlevelstart = 99
		vim.o.foldenable = true
		vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
		vim.o.foldcolumn = "0"

		-- Custom foldtext untuk menghilangkan angka di dalam fold
		vim.opt.foldtext = "v:lua.foldtext_custom()"
		_G.foldtext_custom = function()
			return "..."
		end

		-- Konfigurasi nvim-ufo
		require("ufo").setup({
			provider_selector = function(bufnr, filetype, buftype)
				-- Menggunakan indent dan treesitter sebagai provider folding default
				return { "treesitter", "indent" }
			end,
		})
	end,
}
