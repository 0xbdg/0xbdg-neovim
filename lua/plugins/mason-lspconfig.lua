return {
    "mason-org/mason-lspconfig.nvim",
    opts = { ensure_installed = { "lua_ls", "pyright", "arduino_language_server", "rust_analyzer", "intelephense"},},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}
