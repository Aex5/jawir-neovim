return {
	"noorwachid/nvim-nightsky",
	priority = 1000,
	config = function()
		-- Set transparent to true if you want transparency
		local transparent = true

		require("nightsky").setup({
			transparent = transparent,
			-- Tambahkan pengaturan tambahan jika tema mendukungnya
			-- Misalnya, jika ingin mengatur style atau warna tertentu:
			-- style = "moon", -- Sesuaikan dengan style yang didukung (jika ada)
		})

		vim.cmd.colorscheme("nightsky")
	end,
}
