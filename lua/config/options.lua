-- relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- nerd font
vim.g.have_nerd_font = true

-- 1. Basic opts
-- tabs / indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- better splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 700

-- colors
vim.opt.termguicolors = true

-- completion menu behavior
vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- line break and wrapping
vim.opt.wrap = true
vim.opt.linebreak = true

-- line highlighting
vim.opt.cursorline = true

-- scroll off
vim.opt.scrolloff = 10

-- clipboards
vim.opt.clipboard = "unnamedplus"

-- cases
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- undo file
vim.opt.undofile = true

-- list
vim.opt.list = true
vim.opt.listchars = {tab = "» ", trail = "·", nbsp = "␣"}

-- MOUSE
vim.opt.mouse = "a"

-- preview substitutions live
vim.opt.inccommand = "split"

-- Shows diagnostics and stuff
vim.opt.signcolumn = "yes"


-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
vim.opt.confirm = true

-- breakindent
vim.opt.breakindent = true

-- showmode, I've had a status  line installed, do not need show mode any more
vim.opt.showmode = false

-- stop empty lines from being filled by ~
vim.opt.fillchars = { eob = " " }
