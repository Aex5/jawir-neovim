
return {
	"AlexvZyl/nordic.nvim", -- Plugin Nordic
	priority = 1000, -- Pastikan tema di-load pertama
	config = function()
		-- Setup tema Nordic
		require("nordic").setup({
			transparent_bg = true, -- Aktifkan transparansi jika diinginkan
			italic_comments = true, -- Komentar dengan gaya italic
			bold_keywords = true, -- Kata kunci terlihat tebal
			cursorline = {
				theme = true, -- Sorot baris dengan warna tema
				blend = 0.7, -- Transparansi untuk cursorline
			},
			colors = {
				bg = "#2E3440", -- Background gelap
				fg = "#D8DEE9", -- Teks default
			},
		})

		-- Terapkan tema
		vim.cmd.colorscheme("nordic")
		
		-- Custom highlight untuk fold dan vertical split
		vim.api.nvim_set_hl(0, 'Folded', { fg = 'NONE', bg = 'NONE' })
		vim.api.nvim_set_hl(0, 'FoldColumn', { fg = 'NONE', bg = 'NONE' })
		vim.api.nvim_set_hl(0, 'FoldSeparator', { fg = 'NONE', bg = 'NONE' })
		vim.api.nvim_set_hl(0, 'VertSplit', { fg = 'NONE', bg = 'NONE' })
		
		-- Highlight tambahan
		vim.cmd([[
                highlight Visual guibg=#004187
            ]])
	end,
}

