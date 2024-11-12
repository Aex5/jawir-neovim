
return {
    {
        "briones-gabriel/darcula-solid.nvim",
        priority = 1000,
        dependencies = { "rktjmp/lush.nvim" },
        config = function()
            -- Apply Darcula Solid colorscheme
            vim.cmd("colorscheme darcula-solid")

            -- Set NvimTree folder text colors to white
            vim.cmd([[
                highlight NvimTreeFolderName guifg=#c4c2c2
                highlight NvimTreeOpenedFolderName guifg=#c4c2c2
                highlight NvimTreeEmptyFolderName guifg=#c4c2c2
            ]])
        end,
    },
    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            require("nvim-tree").setup({
                -- NvimTree configuration goes here
            })
        end,
    },
}

