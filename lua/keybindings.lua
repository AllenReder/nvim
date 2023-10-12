vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap

-- jj 映射到 esc
map("i", "jj", "<Esc>", { noremap = true })

-- 视觉行的上下移动
map("n", "j", 'gj', {})
map("n", "k", 'gk', {})

-- 自动补全大括号
-- map("i", "{", "{<CR>}<Esc>O", {})
-- 在 C++ 文件中按下 '{' 自动补全右大括号
vim.cmd([[
augroup CppAutoCloseBrace
    autocmd!
    autocmd FileType cpp inoremap <buffer> { {<CR>}<esc>k$a
augroup END
]])
