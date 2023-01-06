-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use( 'luisiacc/gruvbox-baby' )
    use( 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use( 'nvim-treesitter/playground' )
    use( 'ThePrimeagen/harpoon' )
    use( 'mbbill/undotree' )
    use( 'tpope/vim-fugitive' )
    use{ 'johann2357/nvim-smartbufs', requires = { { 'ojroques/nvim-hardline' } } }
    use{ 
        -- LSP
        'neovim/nvim-lspconfig',
        -- LSP status
        'nvim-lua/lsp-status.nvim',
        -- Completion
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'saadparwaiz1/cmp_luasnip',
        'hrsh7th/cmp-nvim-lsp',
        'L3MON4D3/LuaSnip',
    }
end)
