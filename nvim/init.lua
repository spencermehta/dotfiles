require("plugins")

-- settings 
vim.opt.nu = true
vim.opt.rnu = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- lsp-zero
local lsp = require("lsp-zero")

lsp.preset("recommended")
lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
})

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
-- lsp
vim.keymap.set('n', '<leader>.', function() vim.lsp.buf.code_action() end, bufopts)


local lspconfig = require('lspconfig')
lsp.format_on_save({
	servers = {
		['rust_analyzer'] = {'rust'}
	}
})
