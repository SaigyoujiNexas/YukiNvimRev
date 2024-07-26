return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = function()
      -- vim.keymap.del({ "n", "t", "i" }, "<c-/>")
      return {
        open_mapping = { [[<c-/>]] },
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
