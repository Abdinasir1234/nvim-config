return {
  -- Rainbow brackets/parens — huge for matching block boundaries
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "BufReadPost",
    config = function()
      require("rainbow-delimiters.setup").setup({})
    end,
  },

  -- Indent guides (LazyVim has it, this just makes sure it's prominent)
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      indent = { char = "│" },
      scope = { enabled = true, show_start = true, show_end = true },
    },
  },

  -- Better word motions — treats camelCase/snake_case as separate words
  -- Reduces guessing about where a "word" begins
  {
    "chrisgrieser/nvim-spider",
    keys = {
      { "w", "<cmd>lua require('spider').motion('w')<CR>", mode = { "n", "x", "o" } },
      { "e", "<cmd>lua require('spider').motion('e')<CR>", mode = { "n", "x", "o" } },
      { "b", "<cmd>lua require('spider').motion('b')<CR>", mode = { "n", "x", "o" } },
    },
  },

  -- Highlight word under cursor — helps tracking
  {
    "RRethy/vim-illuminate",
    event = "BufReadPost",
    opts = {
      delay = 200,
      providers = { "lsp", "treesitter", "regex" },
    },
    config = function(_, opts)
      require("illuminate").configure(opts)
    end,
  },
}
