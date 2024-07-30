return {
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        cmd = { "ToggleTerm" },
        keys = {
            {
                "<C-/>",
                function()
                    local count = vim.v.count1
                    require("toggleterm").toggle(count, 0, LazyVim.root.get(), "float", "YukiTerm")
                end,
                desc = "ToggleTerm",
                mode = { "n", "t", "i" },
            },
            {
                "<C-_>",
                function()
                    local count = vim.v.count1
                    require("toggleterm").toggle(count, 0, LazyVim.root.get(), "float", "YukiTerm")
                end,
                desc = "ToggleTerm",
                mode = { "n", "t", "i" },
            },
        },
        opts = function()
            return {
                open_mapping = { [[<C-/>]], [[<C-_>]] },
                insert_mappings = true,
                terminal_mappings = true,
                direction = "float",
                close_on_exit = true,
                winbar = {
                    enabled = true,
                },
            }
        end,
    },
}
