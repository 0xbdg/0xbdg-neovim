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
                "c",
                "lua",
                "html",
                "go",
                "javascript",
                "css",
                "json",
                "rust",
                "arduino",
                "php",
                "htmldjango"
            },

            auto_install = true, 
        })
    end,
}


