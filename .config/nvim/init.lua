require("config.lazy")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })

require("config.lsp")

vim.g.have_nerd_font = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.scrolloff = 8
vim.opt.colorcolumn = "80"
vim.opt.wrap = false
vim.opt.termguicolors = true

vim.keymap.set('n', '<leader>W', ':w<CR>', {})
vim.keymap.set('n', '<leader>Q', ':q!<CR>', {})
vim.keymap.set('n', '<leader>E', ':Ex<CR>', {})
vim.keymap.set('n', '<leader>ws', ':sp<CR>', {})
vim.keymap.set('n', '<leader>wv', ':vsp<CR>', {})
vim.keymap.set('n', '<leader>wh', ':winc h<CR>', {})
vim.keymap.set('n', '<leader>wj', ':winc j<CR>', {})
vim.keymap.set('n', '<leader>wk', ':winc k<CR>', {})
vim.keymap.set('n', '<leader>wl', ':winc l<CR>', {})
vim.keymap.set('n', '<leader>nh', ':nohl<CR>', {})

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
