# Neovim Keymap Cheatsheet

## Legend
- `<leader>` = Space bar
- `Ctrl-x` = Hold Ctrl and press x
- `[key]` = Optional/context-dependent

---

## 📁 File Operations

| Keymap | Action | Description |
|--------|--------|-------------|
| `<leader>w` | `:write` | Save current file |
| `<leader>q` | `:quit` | Quit current window |
| `<leader>fq` | `:q!` | Force quit (discard changes) |

---

## 🧭 Navigation

### Window/Pane Navigation
| Keymap | Action | Description |
|--------|--------|-------------|
| `Ctrl-h` | Move left | Switch to left pane (tmux-aware) |
| `Ctrl-j` | Move down | Switch to pane below (tmux-aware) |
| `Ctrl-k` | Move up | Switch to pane above (tmux-aware) |
| `Ctrl-l` | Move right | Switch to right pane (tmux-aware) |

### Buffer Navigation (Harpoon)
| Keymap | Action | Description |
|--------|--------|-------------|
| `<leader>af` | Add file | Mark file in Harpoon |
| `<leader>mf` | Menu | Toggle Harpoon quick menu |
| `Ctrl-n` | Next | Jump to next Harpoon file |
| `Ctrl-p` | Previous | Jump to previous Harpoon file |

---

## 🔍 Finding & Searching (Telescope)

| Keymap | Action | Description |
|--------|--------|-------------|
| `<leader>ff` | Find files | Fuzzy find files in project |
| `<leader>fg` | Live grep | Search text across files |
| `<leader>fb` | Buffers | List open buffers |
| `<leader>fh` | Help tags | Search Neovim help |

---

## 🌳 File Explorer (Neo-tree)

| Keymap | Action | Description |
|--------|--------|-------------|
| `<leader>n` | Toggle tree | Open/close file explorer |
| `<leader>bf` | Buffer explorer | Show buffers in floating window |

---

## 💻 LSP (Language Server Protocol)

### Code Navigation
| Keymap | Action | Description |
|--------|--------|-------------|
| `K` | Hover docs | Show documentation for symbol under cursor |
| `gd` | Go to definition | Jump to where symbol is defined |
| `gr` | Go to references | Show all references to symbol |
| `gi` | Go to implementation | Jump to implementation |
| `gt` | Go to type definition | Jump to type definition |
| `<leader>gd` | Go to definition | Alternative to `gd` |
| `<leader>gr` | Go to references | Alternative to `gr` |

### Code Actions
| Keymap | Action | Description |
|--------|--------|-------------|
| `<leader>ca` | Code action | Show available fixes/refactorings |
| `<leader>cf` | Format | Format current buffer |
| `<leader>rn` | Rename | Rename symbol across project |

---

## 🐛 Diagnostics (Linting/Errors)

### View Diagnostics
| Keymap | Action | Description |
|--------|--------|-------------|
| `<leader>d` | Show diagnostic | Open floating window with error details |
| `]d` | Next diagnostic | Jump to next error/warning |
| `[d` | Previous diagnostic | Jump to previous error/warning |

### Diagnostics Lists
| Keymap | Action | Description |
|--------|--------|-------------|
| `<leader>xq` | To quickfix | Send all diagnostics to quickfix list |
| `<leader>xl` | To location list | Send current file diagnostics to location list |

---

## 📋 Quickfix List (All Files)

| Keymap | Action | Description |
|--------|--------|-------------|
| `<leader>xo` | Open quickfix | Open quickfix window |
| `<leader>xc` | Close quickfix | Close quickfix window |
| `]q` | Next item | Jump to next quickfix item |
| `[q` | Previous item | Jump to previous quickfix item |
| `]Q` | Last item | Jump to last quickfix item |
| `[Q` | First item | Jump to first quickfix item |

**When to use:** Viewing all diagnostics across entire project

---

## 📍 Location List (Current File)

| Keymap | Action | Description |
|--------|--------|-------------|
| `<leader>lo` | Open location list | Open location list window |
| `<leader>lc` | Close location list | Close location list window |
| `]l` | Next item | Jump to next location item |
| `[l` | Previous item | Jump to previous location item |

**When to use:** Viewing diagnostics for current file only

---

## ⚙️ Utility

| Keymap | Action | Description |
|--------|--------|-------------|
| `<leader>pm` | Plugin manager | Open Lazy.nvim plugin manager |
| `jk` | Exit insert | Quick escape from insert mode |
| `Esc` | Clear highlight | Clear search highlighting |

---

## 🎯 Common Workflows

### Fix All Errors in Project
```
1. <leader>xq    → Load all diagnostics
2. <leader>xo    → Open quickfix window
3. Enter         → Jump to first error
4. <leader>ca    → See available fixes
5. ]q            → Next error
6. Repeat 4-5
7. <leader>xc    → Close quickfix
```

### Fix Errors in Current File
```
1. <leader>xl    → Load current file diagnostics
2. <leader>lo    → Open location list
3. ]l            → Navigate through errors
4. <leader>ca    → Apply fixes
5. <leader>lc    → Close location list
```

### Format Before Commit
```
1. <leader>cf    → Format buffer
2. <leader>xq    → Check for issues
3. Fix any issues
4. <leader>w     → Save
```

### Quick Navigation While Coding
```
1. See error (red underline)
2. <leader>d     → View error details
3. <leader>ca    → Apply quick fix
4. ]d            → Jump to next error
```

---

## 📝 Tips

- **Quickfix vs Location List:**
  - Quickfix = All files (use for project-wide issues)
  - Location list = Current file only (use for focused work)

- **Square Bracket Pattern:**
  - `]` = Next (forward)
  - `[` = Previous (backward)
  - Works for: `]d` `[d`, `]q` `[q`, `]l` `[l`

- **Leader Key Prefixes:**
  - `<leader>f` = Find (Telescope)
  - `<leader>g` = Go to (LSP navigation)
  - `<leader>c` = Code (actions, format)
  - `<leader>x` = eXtra lists (quickfix)
  - `<leader>l` = Location list

---

## 🚀 Pro Tips

1. **Use `K` liberally** - Hover over anything unfamiliar to see docs
2. **Master `]d` and `[d`** - Jump through errors as you write code
3. **Use `<leader>ca` often** - Many issues have auto-fixes
4. **Format on save** - Already configured in null-ls
5. **Quickfix is your friend** - Use it every morning to clean up project

---

Generated for your C/C++ development setup
Last updated: [Today's Date]
