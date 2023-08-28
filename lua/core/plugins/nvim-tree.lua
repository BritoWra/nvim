local global =  vim.g
local keymap = vim.keymap

global.loaded_netrw = 1
global.loaded_newrwPlugin = 1

require("nvim-tree").setup()

keymap.set("n", "<c-n>", ":NvimTreeFindFileToggle<CR>")
