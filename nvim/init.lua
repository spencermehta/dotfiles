require("plugins")

-- lsp-zero
local lsp = require("lsp-zero")

lsp.preset("recommended")
lsp.setup()

-- theme
vim.cmd([[colorscheme gruvbox]])

-- keybinds
local builtin = require("telescope.builtin")
vim.g.mapleader = " "
-- telescope
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
-- fugitive
vim.keymap.set("n", "<leader>gs", "<CMD>G<CR>", {})
vim.keymap.set("n", "<leader>gp", "<CMD>G push<CR>", {})
vim.keymap.set("n", "<leader>gpsu", "<CMD>G push --set-upstream origin HEAD<CR>", {})
