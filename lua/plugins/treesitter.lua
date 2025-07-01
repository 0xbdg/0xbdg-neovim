return {
    "nvim-treesitter/nvim-treesitter", 
    branch = 'master', 
    lazy = false,
    build = ":TSUpdate",

    config = function()
        require("nvim-treesitter.configs").setup({ -- enable syntax highlighting
            highlight = {
                enable = true,
            },
            indent = { enable = true },

            ensured_installed = {
                "python",
                "lua",
                "htmldjango",
                "html",
                "dart",
                "javascript",
                "dart",
                "css",
                "json",
                "rust",
                "arduino"
            },

            auto_install = true, 
        })
    end,
}


