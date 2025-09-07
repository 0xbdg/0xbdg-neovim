return {
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup({
                theme = 'hyper',
                config = {
                    packages = { enable = true },
                    header = {
                      '                                                ',
                      '     ██████╗ ██╗  ██╗██████╗ ██████╗  ██████╗   ',     
                      '    ██╔═████╗╚██╗██╔╝██╔══██╗██╔══██╗██╔════╝   ',     
                      '    ██║██╔██║ ╚███╔╝ ██████╔╝██║  ██║██║  ███╗  ',    
                      '    ████╔╝██║ ██╔██╗ ██╔══██╗██║  ██║██║   ██║  ',    
                      '    ╚██████╔╝██╔╝ ██╗██████╔╝██████╔╝╚██████╔╝  ',   
                      '     ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═════╝  ╚═════╝   ',
                    },
                    shortcut = {
                        { 
                            icon = "󰚰 " ,
                            desc = 'Update', 
                            group = '@property', 
                            action = 'Lazy update', 
                            key = 'u' 
                        },
                        {
                            icon = " ",
                            icon_hl = '@variable',
                            desc = 'Files',
                            group = 'Label',
                            action = 'Telescope find_files hidden=true',
                            key = 'f',
                        },
                        {
                            icon = " ",
                            icon_hl = '@variable',
                            desc = 'LazyGit',
                            group = 'Label',
                            action = 'LazyGit',
                            key = 'l',
                        },
                        {
                            icon = "󰏔 ",
                            icon_hl = '@variable',
                            desc = 'Mason',
                            group = 'Label',
                            action = 'Mason',
                            key = 'm',
                        },
                    },
                    project = { enable = true, limit = 8, icon = '󰪺 ', label = 'Recent Projects', action = 'Telescope find_files cwd=' },
                    mru = { enable = true, limit = 10, icon = '󱋡 ', label = 'Recent Files', cwd_only = false },
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
