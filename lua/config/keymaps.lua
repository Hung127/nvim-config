-- save
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Quick save current file" })
vim.keymap.set("n", "<leader>W", "<cmd>noautocmd w<CR>", { desc = "Save no autoformat file" })

-- disable highlighting on search
vim.keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>", { desc = "Disable highlighting on search when press <ESC>" })

-- Delete without yanking
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without yanking" })

-- Yank whole file
vim.keymap.set("n", "<leader>yy", function()
  vim.cmd("%y")
end, { desc = "Yank whole file" })

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Show full error, warning, etc...
vim.keymap.set("n", "<leader>e", function()
  vim.diagnostic.open_float({ scope = "line" })
end, { desc = "Show full [E]rror/Warning..." })
