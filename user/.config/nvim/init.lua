vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.relativenumber = false

vim.g.mapleader = " "

require("config.lazy")

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

require('telescope').setup {
  defaults = {
    file_ignore_patterns = { "^.git/" },
  },
}

require('neo-tree').setup {
  filesystem = {
    filtered_items = {
      visible = true, 
      hide_dotfiles = false,
      hide_gitignored = true,
    },
  },
}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', function()
  builtin.find_files({ hidden = true })
end, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-g>', function()
  builtin.live_grep({ hidden = true })
end, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<C-n>', '<Cmd>Neotree toggle<CR>')
