local builtin = require("telescope.builtin")
local keymap = vim.keymap

keymap.set("n", "<c-p>", builtin.find_files, {})
keymap.set("n", "<Space><Space>", builtin.oldfiles, {})
keymap.set("n", "<Space>fg", builtin.live_grep, {})
keymap.set("n", "<Space>fh", builtin.help_tags, {})
