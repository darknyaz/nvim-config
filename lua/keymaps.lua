local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- open file tree on <F1>
map('n', '<F1>', ':NvimTreeRefresh<CR>:NvimTreeToggle<CR>', default_opts)
map('n', '<C-o>', [[:lua local previous_buf = vim.api.nvim_get_current_buf()<CR>
                    :lua require("nvim-tree").open_replacing_current_buffer()<CR>
                    :lua require("nvim-tree").find_file(false, previous_buf)<CR>]],
    default_opts)

-- copy/past with X
map('v', '<S-Y>', '"+y', {})
map('n', 'S-P', '"+p', {})

-- windows navigation
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-- telescope
map('n', '<C-f>', ':Telescope find_files<CR>', default_opts)
map('n', '<C-g>', ':Telescope live_grep<CR>', default_opts)

-- symbols outline
map('n', '<C-s>', ':SymbolsOutline<CR>', default_opts)

