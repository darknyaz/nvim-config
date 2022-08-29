local opt = vim.opt

-- tabs
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- line numbers
opt.nu = true

-- shold yank to x clip in vscode
opt.clipboard = 'unnamedplus'

-- nvim-tree
require('nvim-tree').setup({
    view = {
        width = 30,
        side = 'left',
    },
})

require('symbols-outline').setup({
    highlight_hovered_item = true,
    show_guides = true,
    position = 'right',
    relative_width = true,
    width = 25,
})

