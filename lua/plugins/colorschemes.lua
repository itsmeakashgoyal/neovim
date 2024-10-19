return {
  {
    "catppuccin/nvim",
    priority = 150,
    name = "catppuccin",
    config = function()
      require("catppuccin").setup {
        flavour = "mocha", -- auto, latte, frappe, macchiato, mocha
        background = {
            -- :h background
            light = "latte",
            dark = "mocha"
        },
        transparent_background = false, -- disables setting the background color.
        show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
        term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
        dim_inactive = {
            enabled = false, -- dims the background color of inactive window
            shade = "dark",
            percentage = 0.15 -- percentage of the shade to apply to the inactive window
        },
        no_italic = false, -- Force no italic
        no_bold = false, -- Force no bold
        no_underline = false, -- Force no underline
        styles = {
            -- Handles the styles of general hi groups (see `:h highlight-args`):
            comments = {"italic"}, -- Change the style of comments
            conditionals = {"italic"},
            loops = {},
            functions = {},
            keywords = {},
            strings = {},
            variables = {},
            numbers = {},
            booleans = {},
            properties = {},
            types = {},
            operators = {}
            -- miscs = {}, -- Uncomment to turn off hard-coded styles
        },
        color_overrides = {},
        custom_highlights = {},
        default_integrations = true,
        integrations = {
            cmp = true,
            gitsigns = true,
            nvimtree = true,
            treesitter = true,
            notify = true,
            telescope = true,
            mini = {
                enabled = true,
                indentscope_color = ""
            }
            -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        }
    }
      vim.api.nvim_set_hl(0, "NavicIconsOperator", { default = true, bg = "none", fg = "#eedaad" })
      vim.api.nvim_set_hl(0, "NavicText", { default = true, bg = "none", fg = "#eedaad" })
      vim.api.nvim_set_hl(0, "NavicSeparator", { default = true, bg = "none", fg = "#eedaad" })

      vim.api.nvim_command("colorscheme catppuccin")
    end,
  },
  {
    "michaeldyrynda/carbon",
    config = function()
      -- vim.cmd("colorscheme carbon")
    end,
  },
  {
    "sainnhe/gruvbox-material",
    enabled = true,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_transparent_background = 0
      vim.g.gruvbox_material_foreground = "mix"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_ui_contrast = "high"
      vim.g.gruvbox_material_float_style = "bright"
      vim.g.gruvbox_material_statusline_style = "material"
      vim.g.gruvbox_material_cursor = "auto"

      -- vim.g.gruvbox_material_colors_override = { bg0 = '#16181A' } -- #0e1010
      -- vim.g.gruvbox_material_better_performance = 1

      vim.cmd.colorscheme("gruvbox-material")
    end,
  },

  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },

  {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- local lackluster = require("lackluster")
      -- require("nvim-web-devicons").setup({
      --   color_icons = false,
      --   override = {
      --     ["default_icon"] = {
      --       color = lackluster.color.gray4,
      --       name = "Default",
      --     },
      --   },
      -- })

      -- vim.cmd.colorscheme("lackluster-night")
    end,
    init = function()
      -- vim.cmd.colorscheme("lackluster")
      -- vim.cmd.colorscheme("lackluster-hack") -- my favorite
      -- vim.cmd.colorscheme("lackluster-mint")
    end,
  },
  {
    "datsfilipe/vesper.nvim",
    config = function()
      require("vesper").setup({
        transparent = true, -- Boolean: Sets the background to transparent
        italics = {
          comments = false, -- Boolean: Italicizes comments
          keywords = false, -- Boolean: Italicizes keywords
          functions = false, -- Boolean: Italicizes functions
          strings = false, -- Boolean: Italicizes strings
          variables = false, -- Boolean: Italicizes variables
        },
        overrides = {}, -- A dictionary of group names, can be a function returning a dictionary or a table.
        palette_overrides = {},
      })
    end,

    init = function()
      -- vim.cmd.colorscheme("vesper")
    end,
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        transparent = true,
        italic_comments = false,
        hide_fillchars = false,
        borderless_telescope = true,
        terminal_colors = true,
        cache = true,

        -- vim.api.nvim_command("colorscheme cyberdream")
      })
    end,
  },
  {
    "wtfox/jellybeans.nvim",
    priority = 1000,
    config = function()
      require("jellybeans").setup()
      -- vim.cmd.colorscheme("jellybeans")
    end,
  },
}
