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
      }
    end,
  },
  {
    "HiPHish/rainbow-delimiters.nvim",
    event = "VeryLazy",
    main = "rainbow-delimiters.setup",
  },
}
