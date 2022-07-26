local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- open file tree on <F1>
map('n', '<F1>', ':NvimTreeRefresh<CR>:NvimTreeToggle<CR>', default_opts)

-- copy/past with X
map('v', '<S-Y>', '"+y', {})
map('n', 'S-P', '"+p', {})

