return {
  "luukvbaal/statuscol.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local builtin = require("statuscol.builtin")
    require("statuscol").setup({
      setopt = true,
      relculright = true,
      thousands = false,

      ft_ignore = {
        "NvimTree", "neo-tree", "Trouble", "lazy", "mason", "qf", "help"
      },
      bt_ignore = {
        "terminal", "nofile", "neo-tree"
      },

      segments = {
        {
          text = { builtin.foldfunc, " " },
          click = "v:lua.ScFa",
          hl = "FoldColumn",
          condition = { true, builtin.not_empty },
        },

        {
            sign = {
                namespace = { "diagnostic/signs" },
                maxwidth = 1,
                auto = true,
            },
            click = "v:lua.ScSa",
        },

        {
          sign = {
            name = { "gitsigns" },
            maxwidth = 2,
            auto = true,
            colwidth = 1,
            wrap=false,
            foldclosed = true,
            fillchar = " ",
          },
          click = "v:lua.ScSa",
        },
       
    
       
      },

      clickmod = "c",
      clickhandlers = {
        Lnum = builtin.lnum_click,
        FoldClose = builtin.foldclose_click,
        FoldOpen = builtin.foldopen_click,
        FoldOther = builtin.foldother_click,
        ["diagnostic/signs"] = builtin.diagnostic_click,
        gitsigns = builtin.gitsigns_click,
      },
    })

    -- pengaturan fold supaya tampilannya baik
    vim.o.foldenable = true
    vim.o.foldmethod = "indent"
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
    vim.o.foldcolumn = "1"
    /*
    vim.opt.fillchars:append({
      fold = " ",
      foldopen = "",
      foldclose = "",
      foldsep = " ",
      eob = " ",
    })*/
  end,
}
