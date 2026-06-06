-- save
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", {desc = "Quick save current file"})
-- disable highlighting on search
vim.keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>", {desc = "Disable highlighting on search when press <ESC>"})

-- Delete without yanking
vim.keymap.set({"n", "v"}, "<leader>d", '"_d', {desc = "Delete without yanking"})

-- Yank whole file
vim.keymap.set("n", "<leader>yy", function()
    vim.cmd("%y")
end, { desc = "Yank whole file" })

-- Explore
vim.keymap.set("n", "<leader>E", "<cmd>Explore<CR>")

