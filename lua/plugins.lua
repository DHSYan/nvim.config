vim.pack.add({
    'neovim/nvim-lspconfig',

    'stevearc/oil.nvim',
    "nvim-tree/nvim-web-devicons",

    'nvim-treesitter/nvim-treesitter',

    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',
    'BurntSushi/ripgrep'
})

require("oil").setup(require("plugins-options.oil.lua"))
require("nvim-treesitter.configs").setup(require("plugins-options.treesitter.lua"))
