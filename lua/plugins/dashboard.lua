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
                        { 
                            icon = "󰚰 " ,
                            desc = 'Update', 
                            group = '@property', 
                            action = 'Lazy update', 
                            key = 'u' 
                        },
                        {
                            icon = ' ',
                            icon_hl = '@variable',
                            desc = 'Files',
                            group = 'Label',
                            action = 'Telescope find_files hidden=true',
                            key = 'f',
                        },
                        {
                            icon = " ", 
                            desc = 'LazyGit',
                            group = 'Label',
                            action = 'LazyGit',
                            key = 'l',
                        },
                        {
                            icon = "󰏔 ",
                            desc = 'Mason',
                            group = 'Label',
                            action = 'Mason',
                            key = 'm',
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
