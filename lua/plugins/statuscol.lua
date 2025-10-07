return {
  "luukvbaal/statuscol.nvim", config = function()
    local builtin = require("statuscol.builtin")
    require("statuscol").setup({
        setopt = true,         -- Whether to set the 'statuscolumn' option, may be set to false for those who
                         -- want to use the click handlers in their own 'statuscolumn': _G.Sc[SFL]a().
                         -- Although I recommend just using the segments field below to build your
                         -- statuscolumn to benefit from the performance optimizations in this plugin.
  -- builtin.lnumfunc number string options
        thousands = false,     -- or line number thousands separator string ("." / ",")
        relculright = true,   -- whether to right-align the cursor line number with 'relativenumber' set
  -- Builtin 'statuscolumn' options
        ft_ignore = nil,       -- Lua table with 'filetype' values for which 'statuscolumn' will be unset
        bt_ignore = nil,       -- Lua table with 'buftype' values for which 'statuscolumn' will be unset

        segments = {
            { text = { "%C" }, click = "v:lua.ScFa" },
            { text = { "%s" }, click = "v:lua.ScSa" },
            {
            text = { builtin.lnumfunc, " " },
            condition = { true, builtin.not_empty },
            click = "v:lua.ScLa",
            }
        },

        clickmod = "c",         -- modifier used for certain actions in the builtin clickhandlers:
                          -- "a" for Alt, "c" for Ctrl and "m" for Meta.
        clickhandlers = {       -- builtin click handlers, keys are pattern matched
            Lnum                    = builtin.lnum_click,
            FoldClose               = builtin.foldclose_click,
            FoldOpen                = builtin.foldopen_click,
            FoldOther               = builtin.foldother_click,
            DapBreakpointRejected   = builtin.toggle_breakpoint,
            DapBreakpoint           = builtin.toggle_breakpoint,
            DapBreakpointCondition  = builtin.toggle_breakpoint,
            ["diagnostic/signs"]    = builtin.diagnostic_click,
            gitsigns                = builtin.gitsigns_click,
        },
        lnum = 43,             -- v:lnum
        relnum = 5,            -- v:relnum
        virtnum = 0,           -- v:virtnum
        buf = 1,               -- buffer handle of drawn window
        win = 1000,            -- window handle of drawn window
        actual_curbuf = 1,     -- buffer handle of |g:actual_curwin|
        actual_curwin = 1000,  -- window handle of |g:actual_curbuf|
        nu = true,             -- 'number' option value
        rnu = true,            -- 'relativenumber' option value
        empty = true,          -- statuscolumn is currently empty
        fold = {
            width = 1,           -- current width of the fold column
    -- ' fillchars' option values:
            close = "",         -- foldclose
            open = "",          -- foldopen
            sep = " "            -- foldsep
        },
    

    })
  end,
}
