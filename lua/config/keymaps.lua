-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Moving between splits & tmux panes
vim.keymap.set('n', '<C-n>', require('smart-splits').move_cursor_left)
vim.keymap.set('n', '<C-e>', require('smart-splits').move_cursor_down)
vim.keymap.set('n', '<C-i>', require('smart-splits').move_cursor_up) -- Overrides jumplist next
vim.keymap.set('n', '<C-o>', require('smart-splits').move_cursor_right) -- Overrides jumplist previous
vim.keymap.set('n', '<C-Tab>', require('smart-splits').move_cursor_previous)

-- Resize splits & tmux panes
vim.keymap.set('n', '<C-Left>', require('smart-splits').resize_left)
vim.keymap.set('n', '<C-Down>', require('smart-splits').resize_down)
vim.keymap.set('n', '<C-Up>', require('smart-splits').resize_up)
vim.keymap.set('n', '<C-Right>', require('smart-splits').resize_right)

-- Swapping buffers between windows
vim.keymap.set('n', '<leader><leader>n', require('smart-splits').swap_buf_left)
vim.keymap.set('n', '<leader><leader>e', require('smart-splits').swap_buf_down)
vim.keymap.set('n', '<leader><leader>i', require('smart-splits').swap_buf_up)
vim.keymap.set('n', '<leader><leader>o', require('smart-splits').swap_buf_right)

-- Move Lines
vim.keymap.set("n", "<A-e>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-i>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-e>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-i>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-e>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-i>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- Terminal Mappings
vim.keymap.set("t", "<C-n>", "<cmd>wincmd h<cr>", { desc = "Go to Left Window" })
vim.keymap.set("t", "<C-e>", "<cmd>wincmd j<cr>", { desc = "Go to Lower Window" })
vim.keymap.set("t", "<C-i>", "<cmd>wincmd k<cr>", { desc = "Go to Upper Window" })
vim.keymap.set("t", "<C-o>", "<cmd>wincmd l<cr>", { desc = "Go to Right Window" })

-- Unbind keymaps for tab management
vim.keymap.del('n', '<leader><tab>o')
vim.keymap.del('n', '<leader><tab>l')
vim.keymap.del('n', '<leader><tab>f')
vim.keymap.del('n', '<leader><tab><tab>')
vim.keymap.del('n', '<leader><tab>]')
vim.keymap.del('n', '<leader><tab>d')
vim.keymap.del('n', '<leader><tab>[')

-- Open URL under cursor
vim.keymap.set("n", "gx", function()
  vim.cmd("URLOpenUnderCursor")
end, { desc = "Open URL under cursor" })
