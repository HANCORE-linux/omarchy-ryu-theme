return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg         = "#050505",
        dark_bg    = "#040404",
        darker_bg  = "#030303",
        lighter_bg = "#1e1e1e",
        bg_highlight = "#843954",

        fg         = "#D6D0C5",
        dark_fg    = "#a19c94",
        light_fg   = "#dcd7ce",
        bright_fg  = "#e0dcd4",
        muted      = "#404040",

        red        = "#da614e",
        yellow     = "#51605b",
        orange     = "#e07969",
        green      = "#8B9388",
        cyan       = "#717C7C",
        blue       = "#75897F",
        purple     = "#C2A46D",
        brown      = "#86493f",

        bright_red    = "#df6124",
        bright_yellow = "#8B9388",
        bright_green  = "#525e5a",
        bright_cyan   = "#52565e",
        bright_blue   = "#75897F",
        bright_purple = "#C2A46D",

        accent               = "#525e5a",
        cursor               = "#D6D0C5",
        foreground           = "#D6D0C5",
        background           = "#050505",
        selection             = "#1e1e1e",
        selection_foreground = "#D6D0C5",
        selection_background = "#1e1e1e",
      },
      on_highlights = function(hl, c)
    -- Your existing lines
    hl.CursorLine = { bg = "#141414" } 
    hl.CursorLineNr = { fg = c.orange, bold = true }
    hl["@markup.raw.markdown_inline"] = { bg = "NONE" }
    hl["@markup.raw.block.markdown"] = { bg = "NONE" }
	hl["@markup.quote"] = { bg = "NONE" }
   end,
    },
    
    -- set up hot reload
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      require("aether.hotreload").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
