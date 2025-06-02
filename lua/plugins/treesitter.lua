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
                "php",
                "html",
                "c",
                "javascript",
                "dart",
                "css"
            },

            auto_install = true, 
        })
    end,
}


