return {
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = function()
            require("toggleterm").setup{
                direction = "horizontal",
                size = 10, -- height in lines
                open_mapping = [[<C-A-t>]],
                shade_terminals = true,
                start_in_insert = true,
                persist_size = true,
                close_on_exit = true,
                shell = vim.o.shell,
            }
        end
    }
}
