vim.g.mapleader = " "

-- Keymap to open file explorer using Spacebar + e
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Keymap to save current file by pressing leader + w
vim.keymap.set("n", "<leader>w", vim.cmd.w)

-- Copy selected lines leader + y
vim.keymap.set({"n","v"}, "<leader>y", '"+y')
-- Copy current line leader + Y
vim.keymap.set({"n","v"}, "<leader>Y", '"+Y')

-- Delete clipboard 
vim.keymap.set({"n","v"}, "<leader>d", '"+d')
vim.keymap.set({"n","v"}, "<leader>D", '"+D')

-- Paste
vim.keymap.set({"n","v"}, "<leader>p", '"+p')
vim.keymap.set({"n","v"}, "<leader>P", '"+P')
