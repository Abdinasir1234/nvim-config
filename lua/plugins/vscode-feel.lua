return {
  -- Autosave — saves automatically like VSCode does
  {
    "okuuva/auto-save.nvim",
    event = { "InsertLeave", "TextChanged" },
    opts = {
      debounce_delay = 1000, -- wait 1s after you stop typing, then save
    },
  },

  -- Floating/docked terminal (Ctrl+\)
  {
    "akinsho/toggleterm.nvim",
    keys = { [[<C-\>]] },
    opts = {
      open_mapping = [[<C-\>]],
      direction = "horizontal",
      size = 15,
    },
  },

  -- Ctrl+D multi-cursor like VSCode
  {
    "mg979/vim-visual-multi",
    event = "BufReadPost",
  },

  -- IntelliSense-style signature hints while typing function args
  {
    "ray-x/lsp_signature.nvim",
    event = "LspAttach",
    opts = {
      hint_enable = false, -- just show the floating box, no inline hint
      handler_opts = { border = "rounded" },
    },
  },
}
