-- return {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require("catppuccin").setup({
--
--             flavour = "latte", -- latte, frappe, macchiato, mocha
--             background = { -- :h background
--                 dark = "latte",
--                 light = "latte",
--             },
--             transparent_background = true, -- disables setting the background color.
--             show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
--             term_colors = true,    -- sets terminal colors (e.g. `g:terminal_color_0`)
--             dim_inactive = {
--                 enabled = false,    -- dims the background color of inactive window
--                 shade = "dark",
--                 percentage = 0.15,  -- percentage of the shade to apply to the inactive window
--             },
--             no_italic = true,       -- Force no italic
--             no_bold = true,         -- Force no bold
--             no_underline = true,    -- Force no underline
--             styles = {              -- Handles the styles of general hi groups (see `:h highlight-args`):
--                 comments = {},      -- Change the style of comments
--                 conditionals = {},
--                 loops = {},
--                 functions = {},
--                 keywords = {},
--                 strings = {},
--                 variables = {},
--                 numbers = {},
--                 booleans = {},
--                 properties = {},
--                 types = {},
--                 operators = {},
--                 -- miscs = {}, -- Uncomment to turn off hard-coded styles
--             },
--             color_overrides = {
--                 mocha = {
--                     rosewater = "#ffc0b9",
--                     flamingo = "#f5aba3",
--                     pink = "#f592d6",
--                     mauve = "#c0afff",
--                     red = "#ea746c",
--                     maroon = "#ff8595",
--                     peach = "#fa9a6d",
--                     yellow = "#ffe081",
--                     green = "#99d783",
--                     teal = "#47deb4",
--                     sky = "#00d5ed",
--                     sapphire = "#00dfce",
--                     blue = "#00baee",
--                     lavender = "#abbff3",
--                     text = "#cccccc",
--                     subtext1 = "#bbbbbb",
--                     subtext0 = "#aaaaaa",
--                     overlay2 = "#999999",
--                     overlay1 = "#888888",
--                     overlay0 = "#777777",
--                     surface2 = "#666666",
--                     surface1 = "#555555",
--                     surface0 = "#444444",
--                     base = "#202020",
--                     mantle = "#222222",
--                     crust = "#333333",
--                 },
--             },
--             custom_highlights = {},
--             default_integrations = true,
--             integrations = {
--                 cmp = true,
--                 gitsigns = true,
--                 nvimtree = true,
--                 treesitter = true,
--                 notify = false,
--                 mini = {
--                     enabled = true,
--                     indentscope_color = "",
--                 },
--                 -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--             },
--         })
--         vim.cmd.colorscheme "catppuccin"
--     end,
-- }


-- return {
--     "cdmill/neomodern.nvim",
--     name = "neomodern",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require("neomodern").setup({
--             -- Main options --
--             style = "darkforest",   -- choose between 'iceclimber', 'coffeecat', 'darkforest', 'campfire', 'roseprime', 'daylight'
--             toggle_style_key = "-", -- keymap to cycle between styles
--             toggle_style_list = {   -- a table of which styles to cycle through, by default all styles are included
--                 "daylight",
--                 "darkforest",
--                 "roseprime",
--             },
--             transparent = true, -- don't set background
--             term_colors = true, -- if true enable the terminal
--
--             -- Formatting --
--             code_style = {
--                 comments = "italic",
--                 conditionals = "none",
--                 functions = "none",
--                 keywords = "none",
--                 headings = "bold", -- markdown headings
--                 operators = "none",
--                 keyword_return = "bold",
--                 strings = "none",
--                 variables = "none",
--             },
--
--             -- UI options --
--             ui = {
--                 colored_docstrings = true, -- if true, docstrings will be highlighted like strings, otherwise they will be highlighted like comments
--                 plain_float = false,       -- don't set background of floating windows. recommended for when using floating windows with borders
--                 show_eob = true,           -- show the end-of-buffer tildes
--
--                 -- Plugins Related --
--                 lualine = {
--                     bold = true,
--                     plain = false, -- use a less distracting lualine. note: works best when no lualine separators are used
--                 },
--                 cmp = {
--                     plain = false,        -- don't highlight lsp-kind items
--                     reverse = false,      -- reverse item kind highlights in cmp menu
--                 },
--                 telescope = "borderless", -- choose between 'borderless' or 'bordered'
--                 diagnostics = {
--                     darker = true,        -- darker colors for diagnostic
--                     undercurl = false,    -- use undercurl for diagnostics
--                     background = true,    -- use background color for virtual text
--                 },
--             },
--
--             -- Custom Highlights --
--             colors = {},     -- Override default colors
--             highlights = {}, -- Override highlight groups
--         })
--         -- vim.cmd.colorscheme "tokyodark"
--         require("neomodern").load()
--     end,
-- }

return {
    "neanias/everforest-nvim",
    name = "everforest",
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
        require("everforest").setup({
            ---Controls the "hardness" of the background. Options are "soft", "medium" or "hard".
            ---Default is "medium".
            background = "hard",
            ---How much of the background should be transparent. 2 will have more UI
            ---components be transparent (e.g. status line background)
            transparent_background_level = 0,
            ---Whether italics should be used for keywords and more.
            italics = false,
            ---Disable italic fonts for comments. Comments are in italics by default, set
            ---this to `true` to make them _not_ italic!
            disable_italic_comments = false,
            ---By default, the colour of the sign column background is the same as the as normal text
            ---background, but you can use a grey background by setting this to `"grey"`.
            sign_column_background = "none",
            ---The contrast of line numbers, indent lines, etc. Options are `"high"` or
            ---`"low"` (default).
            ui_contrast = "high",
            ---Dim inactive windows. Only works in Neovim. Can look a bit weird with Telescope.
            ---
            ---When this option is used in conjunction with show_eob set to `false`, the
            ---end of the buffer will only be hidden inside the active window. Inside
            ---inactive windows, the end of buffer filler characters will be visible in
            ---dimmed symbols. This is due to the way Vim and Neovim handle `EndOfBuffer`.
            dim_inactive_windows = false,
            ---Some plugins support highlighting error/warning/info/hint texts, by
            ---default these texts are only underlined, but you can use this option to
            ---also highlight the background of them.
            diagnostic_text_highlight = true,
            ---Which colour the diagnostic text should be. Options are `"grey"` or `"coloured"` (default)
            diagnostic_virtual_text = "coloured",
            ---Some plugins support highlighting error/warning/info/hint lines, but this
            ---feature is disabled by default in this colour scheme.
            diagnostic_line_highlight = true,
            ---By default, this color scheme won't colour the foreground of |spell|, instead
            ---colored under curls will be used. If you also want to colour the foreground,
            ---set this option to `true`.
            spell_foreground = false,
            ---Whether to show the EndOfBuffer highlight.
            show_eob = true,
            ---Style used to make floating windows stand out from other windows. `"bright"`
            ---makes the background of these windows lighter than |hl-Normal|, whereas
            ---`"dim"` makes it darker.
            ---
            ---Floating windows include for instance diagnostic pop-ups, scrollable
            ---documentation windows from completion engines, overlay windows from
            ---installers, etc.
            ---
            ---NB: This is only significant for dark backgrounds as the light palettes
            ---have the same colour for both values in the switch.
            float_style = "bright",
            ---Inlay hints are special markers that are displayed inline with the code to
            ---provide you with additional information. You can use this option to customize
            ---the background color of inlay hints.
            ---
            ---Options are `"none"` or `"dimmed"`.
            inlay_hints_background = "none",
            ---You can override specific highlights to use other groups or a hex colour.
            ---This function will be called with the highlights and colour palette tables.
            on_highlights = function(highlight_groups, palette) end,
            ---You can override colours in the palette to use different hex colours.
            ---This function will be called once the base and background colours have
            ---been mixed on the palette.
            colours_override = function(palette)
                palette.fg = "#1a1f1f"
                palette.red = "#e30000"
                palette.orange = "#b03b00"

                palette.yellow ="#000fff"
                palette.green = "#067800"

                palette.aqua = "#00a18e"
                palette.blue = "#05baee"
                palette.purple = "#9b00cf"
                palette.grey0 = "#6e6e6e"
                palette.grey1 = "#5c5c5c"
                palette.grey2 = "#3b3b3b"
                palette.statusline1 = "#8bc34a"
                palette.statusline2 = "#607d8b"
                palette.statusline3 = "#e53935"
                palette.none = "NONE"
            end,
        })
        vim.o.background = "light"
        require("everforest").load()
        vim.api.nvim_set_hl(0, "LineNr", {fg = "#000000"})
    end,
}

