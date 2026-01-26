return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#f3e4cb",
                bg_dark = "#f3e4cb",
                bg_highlight = "#9f8253",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#4d2e1a",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#080503",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#9f8253",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#a4373c",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#d2656a",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#a8611f",
                -- green: Comments, strings, success states, git additions
                green = "#a46d2d",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#755833",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#a32f1a",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#9c3521",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#de553a",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
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
