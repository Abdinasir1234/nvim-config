-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
--
-- -- Add at the bottom
vim.opt.spell = true
vim.opt.spelllang = { "en", "sv" }

-- Easier on dyslexic reading
vim.opt.linebreak = true        -- wrap at word boundaries, not mid-word
vim.opt.cursorline = true       -- highlight current line
vim.opt.cursorlineopt = "number,line"
vim.opt.scrolloff = 8           -- keep cursor away from edges, less re-tracking
vim.opt.sidescrolloff = 8

-- Slow down 'matching' so your eye can catch it
vim.opt.matchtime = 


-- Add at the bottom
vim.opt.spell = true
vim.opt.spelllang = { "en", "sv" }

-- Easier on dyslexic reading
vim.opt.linebreak = true        -- wrap at word boundaries, not mid-word
vim.opt.cursorline = true       -- highlight current line
vim.opt.cursorlineopt = "number,line"
vim.opt.scrolloff = 8           -- keep cursor away from edges, less re-tracking
vim.opt.sidescrolloff = 8

-- Slow down 'matching' so your eye can catch it
vim.opt.matchtime = 33
