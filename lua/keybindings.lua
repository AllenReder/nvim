vim.g.mapleader = " "
vim.g.maplocalleader = " "local map = vim.api.nvim_set_keymap

-- Map jj to Esc
map("i", "jj", "<Esc>", { noremap = true })

-- Map j to gj and k to gk
map("n", "j", 'gj', {})
map("n", "k", 'gk', {})

