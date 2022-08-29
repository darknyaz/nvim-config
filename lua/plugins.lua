local cmd = vim.cmd

require('packer').startup(function()
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
        tag = 'nightly', -- optional, updated every week. (see issue #1193)
    }

    use {
        'neovim/nvim-lspconfig',
        requires = {
            'williamboman/nvim-lsp-installer',
        },
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { 
            'nvim-lua/plenary.nvim',
        },
    }

    -- tree like code outline
    use 'simrat39/symbols-outline.nvim'
end)

