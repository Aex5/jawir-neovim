
return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
      size = 20, -- Ukuran default untuk terminal horizontal
      shading_factor = 2,
      float_opts = {
        border = 'curved',
      },
    },
    config = function(_, opts)
      require('toggleterm').setup(opts)

      local Terminal = require('toggleterm.terminal').Terminal

      -- Terminal horizontal
      local horizontal_term = Terminal:new({ direction = "horizontal" })
      vim.keymap.set('n', 'th', function()
        horizontal_term:toggle()
      end, { desc = "Open Horizontal Terminal" })

      -- Terminal vertikal dengan ukuran lebih lebar
      local vertical_term = Terminal:new({
        direction = "vertical",
        size = vim.o.columns * 0.3, -- Default 50% dari lebar jendela
      })
      vim.keymap.set('n', 'tt', function()
        vertical_term:toggle()
        -- Memperbesar jika ukuran tidak sesuai
        if vertical_term:is_open() then
          vertical_term:resize(vim.o.columns * 0.3)
        end
      end, { desc = "Open Vertical Terminal" })

      -- Keymap untuk berpindah mode
      vim.keymap.set('t', 'jk', [[<C-\><C-n>]], { desc = "Masuk Mode Normal dari Terminal" })
      vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = "Masuk Mode Normal dari Terminal" })

      -- Keymap untuk masuk mode insert menggunakan "a"
      vim.keymap.set('t', 'a', 'a', { desc = "Masuk Mode Insert di Terminal", remap = true })
    end,
  },
}

