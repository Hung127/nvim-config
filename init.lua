
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- nerd font
vim.g.have_nerd_font = true

-- TODO:
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
vim.opt.timeoutlen = 300

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
vim.opt.listchars = {tab = '» ', trail = '·', nbsp = '␣'}

-- MOUSE
vim.opt.mouse = "a"

-- preview substitutions live
vim.opt.inccommand = 'split'

-- Shows diagnostics and stuff
vim.opt.signcolumn = 'yes'


-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
vim.opt.confirm = true

-- breakindent
vim.opt.breakindent = true

-- 2. basic keymaps

-- save
vim.keymap.set('n', '<leader>w', '<cmd>w<CR>', {desc = "Quick save current file"})
-- disable highlighting on search
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Delete without yanking
vim.keymap.set('n', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>d', '"_d')


-- () {}...

-- Explore
vim.keymap.set('n', '<leader>E', '<cmd>Explore<CR>')
