return {
    "mason-org/mason-lspconfig.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },

    config = function()
        require("mason-lspconfig").setup {
            automatic_enable = {
                exclude = {
                    "pylsp",
                    "pyright",
                    "lua_ls",
                    "arduino_language_server"
                }
            }
        }

        require("mason-lspconfig").setup {
            ensure_installed = {
                "lua_ls",
                "pyright",
                "pylsp",
                "arduino_language_server"
            },
            automatic_installation = true,
        }

        local on_attach = function(_, _)
            local opts = { noremap = true, silent = true }
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
            vim.keymap.set("n", "K", vim.lsp.buf.hover)
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
            vim.keymap.set("n", "gd", vim.lsp.buf.definition)
            vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help)
            vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition)
            vim.keymap.set("n", "gr", vim.lsp.buf.references)

        end


        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({
            on_attach = on_attach,
            settings = {
                Lua = {
                        diagnostics = {
                            globals = { "vim" },
                    },
                },
            },
        })
    end
}
