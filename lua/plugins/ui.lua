return {
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin",
        },
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        opts = function(_, opts)
            opts = opts or {}
            opts.flavour = "macchiato"
            opts.transparent_background = true
            opts.integrations = {
                rainbow_delimiters = true,
                window_picker = true,
            }
        end,
    },
    {
        "HiPHish/rainbow-delimiters.nvim",
        event = "VeryLazy",
        main = "rainbow-delimiters.setup",
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
            "3rd/image.nvim",
            {
                "s1n7ax/nvim-window-picker",
                version = "2.*",
                config = function()
                    require("window-picker").setup({
                        filter_rules = {
                            include_current_win = false,
                            autoselect_one = true,
                            -- filter using buffer options
                            bo = {
                                -- if the file type is one of following, the window will be ignored
                                filetype = { "neo-tree", "neo-tree-popup", "notify" },
                                -- if the buffer type is one of following, the window will be ignored
                                buftype = { "terminal", "quickfix" },
                            },
                        },
                    })
                end,
            },
        },
        keys = {
            { "<leader>fe", false },
            { "<leader>fE", false },
            { "<leader>ge", false },
            { "<leader>be", false },
            { "<leader>e", false },
            { "<leader>E", false },
            {
                "<c-t>",
                function()
                    require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
                end,
                desc = "Explorer NeoTree",
            },
            {
                "<c-g>",
                function()
                    require("neo-tree.command").execute({ source = "git_status", toggle = true })
                end,
                desc = "Git Explorer",
            },
            {
                "<c-b>",
                function()
                    require("neo-tree.command").execute({ source = "buffers", toggle = true })
                end,
                desc = "Buffer Explorer",
            },
        },
    },
}
