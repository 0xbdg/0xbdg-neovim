return {
    'vidocqh/data-viewer.nvim',
    opts = {
        view = {
            float = true, -- False will open in current window
            width = 0.8, -- Less than 1 means ratio to screen width, valid when float = true
            height = 0.8, -- Less than 1 means ratio to screen height, valid when float = true
            zindex = 50, -- Valid when float = true
        },
        keymap = {
            quit = "q",
            next_table = "<C-l>",
            prev_table = "<C-h>",
        },
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "kkharji/sqlite.lua", -- Optional, sqlite support
    }
}
