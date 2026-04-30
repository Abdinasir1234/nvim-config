# LazyVim Setup — Abdinasir's Config

Tailored for: dyslexia, Claude Code workflow, coming from VSCode (10+ years).

---

## Plugin List

### Claude Code Integration
| Plugin | Purpose |
|---|---|
| `coder/claudecode.nvim` | Send selections, manage Claude sessions inside Neovim |

### Dyslexia-Friendly
| Plugin | Purpose |
|---|---|
| `HiPhish/rainbow-delimiters.nvim` | Colored matching brackets/parens |
| `lukas-reineke/indent-blankline.nvim` | Visible indent guides |
| `chrisgrieser/nvim-spider` | Smarter `w`/`e`/`b` — handles camelCase, snake_case |
| `RRethy/vim-illuminate` | Highlights word under cursor |
| `rebelot/kanagawa.nvim` | Warm, high-contrast colorscheme |

### VSCode Feel
| Plugin | Purpose |
|---|---|
| `folke/trouble.nvim` | Problems panel |
| `akinsho/toggleterm.nvim` | Floating/docked terminal |
| `mg979/vim-visual-multi` | Ctrl+D multi-cursor |
| `ray-x/lsp_signature.nvim` | IntelliSense-style signature hints |
| `stevearc/overseer.nvim` | Task runner (like VSCode tasks.json) |

### Already in LazyVim (don't reinstall)
- `flash.nvim` — 2-char jump (press `s`)
- `which-key.nvim` — keybinding hints
- `telescope.nvim` — file/text picker
- `neo-tree.nvim` — file explorer
- `conform.nvim` — format on save
- `snacks.nvim` — dashboard, picker, notifier

---

## File Structure

```
~/.config/nvim/lua/
├── config/
│   ├── options.lua    (modify existing)
│   └── keymaps.lua    (modify existing)
└── plugins/
    ├── claudecode.lua
    ├── dyslexia.lua
    ├── colorscheme.lua
    ├── vscode-feel.lua
    ├── vscode-keys.lua
    └── runner.lua
```

---

## Setup Steps

1. Drop the plugin files in `~/.config/nvim/lua/plugins/`
2. Update `lua/config/options.lua` with the additions below
3. Update `lua/config/keymaps.lua` with the F5 run keymap
4. Restart Neovim — Lazy installs everything
5. Run `:LazyExtras` → enable `dap.core` + language extras (Python, Rust, etc.)
6. Run `:checkhealth` to verify
7. Make sure `claude` CLI is in `$PATH`
8. Set terminal font to **Atkinson Hyperlegible Mono** at +1 size (e.g. 14pt)

---

## options.lua additions

```lua
-- Spell check (English + Swedish)
vim.opt.spell = true
vim.opt.spelllang = { "en", "sv" }

-- System clipboard (Ctrl+C / Ctrl+V from outside)
vim.opt.clipboard = "unnamedplus"

-- Easier reading
vim.opt.linebreak = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number,line"
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.matchtime = 3
```

---

## VSCode Keybindings — Full Mapping Table

### Editing
| VSCode | LazyVim | Notes |
|---|---|---|
| `Ctrl+S` | `Ctrl+S` (remapped) or `:w` | Save |
| `Ctrl+Z` | `u` or `Ctrl+Z` (remapped) | Undo |
| `Ctrl+Y` / `Ctrl+Shift+Z` | `Ctrl+R` or `Ctrl+Y` (remapped) | Redo |
| `Ctrl+A` | `ggVG` or `Ctrl+A` (remapped) | Select all |
| `Ctrl+C` | `y` (visual mode) | Copy |
| `Ctrl+X` | `d` or `x` | Cut |
| `Ctrl+V` | `p` (after) / `P` (before) | Paste |
| `Ctrl+F` | `/` or `Ctrl+F` (remapped) | Find in file |
| `Ctrl+H` | `:%s/old/new/g` | Find & replace |
| `Ctrl+/` | `gcc` or `Ctrl+/` (remapped) | Toggle comment |
| `Ctrl+D` | `Ctrl+D` | Multi-cursor on word |
| `Alt+↑/↓` | `Alt+j` / `Alt+k` | Move line |
| `F2` | `<leader>cr` | Rename symbol |
| `F12` | `gd` | Go to definition |

### Navigation
| VSCode | LazyVim | Notes |
|---|---|---|
| `Ctrl+P` | `<leader>ff` | Find file |
| `Ctrl+Shift+F` | `<leader>fg` | Project search |
| `Ctrl+B` | `<leader>e` or `Ctrl+B` (remapped) | Toggle file explorer |
| `Ctrl+\`` | `Ctrl+\` | Toggle terminal |
| `Ctrl+Tab` | `<S-h>` / `<S-l>` | Switch buffer |

### Vim-only superpowers (worth learning)
| Key | Action |
|---|---|
| `s` + 2 chars | Flash jump anywhere on screen |
| `<Space>` | Leader — wait, which-key shows menu |
| `.` | Repeat last change |
| `ciw` | Change inner word |
| `di"` | Delete inside quotes |
| `gg` / `G` | Top / bottom of file |
| `*` | Search word under cursor |

---

## File Operations (Neo-tree)

Open with `<leader>e`. Inside the tree:

| Key | Action |
|---|---|
| `a` | Add file/folder (use `path/to/file.ext`, trailing `/` = dir) |
| `A` | Add directory |
| `d` | Delete |
| `r` | Rename |
| `c` | Copy |
| `m` | Move |
| `y` / `Y` | Copy filename / full path |
| `p` | Paste |
| `x` | Cut |
| `Enter` | Open |
| `Ctrl+v` / `Ctrl+s` | Open in vertical / horizontal split |
| `H` | Toggle hidden files |
| `?` | Show all keybindings |
| `q` | Close |

---

## Terminal

| Key | Action |
|---|---|
| `Ctrl+\` | Toggle terminal at bottom |
| `Esc` | Exit terminal mode (back to normal Vim) |
| `i` / `a` | Re-enter terminal mode |
| `:2ToggleTerm` | Open second terminal |
| `:3ToggleTerm` | Open third, etc. |

---

## Compile & Run

| Key | Action |
|---|---|
| `F5` | Compile & run current file (auto-detects language) |
| `<leader>rr` | Overseer task picker (full project builds) |
| `<leader>rt` | Toggle task list |
| `:!cmd` | One-off shell command (`%` = current file) |

F5 supports: C, C++, Rust, Python, JS/TS, Go, Java, Bash.

---

## Claude Code

| Key | Action |
|---|---|
| `<leader>ac` | Toggle Claude Code |
| `<leader>af` | Focus Claude window |
| `<leader>ar` | Resume previous session |
| `<leader>aC` | Continue session |
| `<leader>am` | Select Claude model |
| `<leader>ab` | Add current buffer to context |
| `<leader>as` (visual) | Send selection to Claude |
| `<leader>aa` | Accept diff |
| `<leader>ad` | Deny diff |

---

## First Week Survival Cheat Sheet

```
ESC          → leave any mode, get back to normal
i            → insert text (start typing)
:w           → save
:q           → quit
:wq          → save and quit
u            → undo
Ctrl+R       → redo
y            → copy (in visual mode)
d            → cut
p            → paste
/text        → search for "text"
n / N        → next / previous match
gg / G       → top / bottom of file
gcc          → toggle comment line
<Space>      → leader (which-key shows you what's next)
<leader>e    → file explorer
<leader>ff   → find file
<leader>fg   → search in project
<leader>ac   → Claude Code
Ctrl+\       → terminal
F5           → compile & run
s + 2 chars  → flash jump
```

---

## Pro Tips

- **Don't fight Vim's defaults** — keep the VSCode remaps for week 1, then delete them. `u` and `ggVG` become muscle memory in 2-3 weeks.
- **Forgot a binding?** Press `<Space>` and wait — which-key shows everything.
- **Don't remap `Ctrl+C`/`Ctrl+V`/`Ctrl+X`** — they have important Vim functions. Use `clipboard = "unnamedplus"` instead.
- **`:checkhealth`** — diagnose plugin issues fast.
- **`:Lazy`** — manage plugins (update, remove, sync).
- **`:LazyExtras`** — enable preconfigured language packs.
- **Bigger font + Atkinson Hyperlegible Mono** matters more than any plugin for dyslexia.
