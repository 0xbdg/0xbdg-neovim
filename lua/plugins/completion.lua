return { "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip"
  }, 
  config = function() 
    local cmp = require('cmp')
    local lspkind = require('lspkind')
    local navbuddy = require("nvim-navbuddy")

    cmp.setup({
      snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
            vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)

            -- For `mini.snippets` users:
            -- local insert = MiniSnippets.config.expand.insert or MiniSnippets.default_insert
            -- insert({ body = args.body }) -- Insert at cursor
            -- cmp.resubscribe({ "TextChangedI", "TextChangedP" })
            -- require("cmp.config").set_onetime({ sources = {} })
        end,
      },
      window = {
        completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        -- { name = 'vsnip' }, -- For vsnip users.
        { name = 'luasnip' }, -- For luasnip users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
        -- { name = 'snippy' }, -- For snippy users.
      }, {
        { name = 'buffer' },
      }),
      formatting= {
        format = lspkind.cmp_format({
            mode = 'symbol_text',
            ellipsis_char = '...',
            show_labelDetails = true,
        })
      }
    })

    local capabilities = require('cmp_nvim_lsp').default_capabilities()
 
    vim.lsp.config("pyright",{
        capabilities = capabilities,
        on_attach = function(client, bufnr)
            navbuddy.attach(client, bufnr)
        end
    })

    vim.lsp.config("lua_ls", {
        capabilities = capabilities,
        on_attach = function(client, bufnr)
            navbuddy.attach(client, bufnr)
        end
    })
  
    vim.lsp.config('rust_analyzer',{
        capabilities = capabilities,
        on_attach = function(client, bufnr)
            navbuddy.attach(client, bufnr)
        end
    })
  
    vim.lsp.config("arduino_language_server",{
        capabilities = capabilities,
        cmd = {
            "arduino-languages-server",
            "-clangd", "",
            "-cli" , "",
            "-cli-config", "",
            "-fqbn", ""
        },
        on_attach = function(client, bufnr)
            navbuddy.attach(client, bufnr)
        end
    })

    vim.lsp.config('intelephense',{
        capabilities = capabilities,
        on_attach = function(client, bufnr)
            navbuddy.attach(client, bufnr)
        end
    })

    vim.lsp.config('gopls',{
        capabilities = capabilities,
        on_attach = function(client, bufnr)
            navbuddy.attach(client, bufnr)
        end
    })
    end
}
