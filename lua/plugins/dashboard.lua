return {
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup({
                theme = 'hyper',
                config = {
                    header = {
                      '    ██████╗ ██╗  ██╗██████╗ ██████╗  ██████╗  ',     
                      '   ██╔═████╗╚██╗██╔╝██╔══██╗██╔══██╗██╔════╝  ',     
                      '   ██║██╔██║ ╚███╔╝ ██████╔╝██║  ██║██║  ███╗ ',    
                      '   ████╔╝██║ ██╔██╗ ██╔══██╗██║  ██║██║   ██║ ',    
                      '   ╚██████╔╝██╔╝ ██╗██████╔╝██████╔╝╚██████╔╝ ',   
                      '    ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═════╝  ╚═════╝  ',
                    },
                    shortcut = {
                        { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
                        {
                            icon = ' ',
                            icon_hl = '@variable',
                            desc = 'Files',
                            group = 'Label',
                            action = 'Telescope find_files',
                            key = 'f',
                        },
                        {
                            desc = ' LazyGit',
                            group = 'DiagnosticHint',
                            action = 'LazyGit',
                            key = 'l',
                        },
                        {
                            desc = ' dotfiles',
                            group = 'Number',
                            action = 'Telescope find_files hidden=true',
                            key = 'd',
                        },
                    },
                    footer = {
                        '',
                        '',
                        '0xbdg neovim text editor'
                    },
                },
            })
            end,
            dependencies = { {'nvim-tree/nvim-web-devicons'}}
    }
}
