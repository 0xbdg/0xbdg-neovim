return { 
    "sindrets/diffview.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "TimUntersberger/neogit", config = { disable_commit_confirmation = true } },
    },
    keys = {
        { "<C-g>", "<CMD>DiffviewOpen<CR>", mode = { "n", "i", "v" } }
    },
    config = {
            keymaps = {
                view = {
                    ["<C-g>"] = "<CMD>DiffviewClose<CR>",
                    ["c"] = "<CMD>DiffviewClose|Neogit commit<CR>",
                },
                file_panel = {
                    ["<C-g>"] = "<CMD>DiffviewClose<CR>",
                    ["c"] = "<CMD>DiffviewClose|Neogit commit<CR>",
                },
            },
    } 
}
