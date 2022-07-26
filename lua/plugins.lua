local cmd = vim.cmd

return require('packer').startup(function()
    -- packer itself
    use 'wbthomason/packer.nvim'

    -- color theme
    use 'morhetz/gruvbox'
    cmd [[let g:gruvbox_contrast_dark = 'medium']]
    cmd [[colorscheme gruvbox]]

    -- file tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = function() require'nvim-tree'.setup {
            view = {
                width = 30,
                side = "left"
            }
        } end,
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
end)
