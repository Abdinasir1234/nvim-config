return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      compile = true,
      undercurl = true,
      commentStyle = { italic = false }, -- italics can be harder to read
      keywordStyle = { italic = false },
      statementStyle = { bold = true },
      background = { dark = "wave", light = "lotus" },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-wave", -- warmer than tokyonight, easier on eyes
    },
  },
}
