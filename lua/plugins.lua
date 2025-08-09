vim.pack.add({
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = 'https://github.com/stevearc/oil.nvim' },
    { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
    { src = 'https://github.com/echasnovski/mini.pick' },
    { src = 'https://github.com/shortcuts/no-neck-pain.nvim' },
    { src = 'https://github.com/L3MON4D3/LuaSnip' },
})

local nmap = require("util.nmap")

vim.cmd("colorscheme retrobox")

require("plugins-options.oil")
require("plugins-options.mini")
require("snippets.mysnips")

-- Oil
nmap("<leader>e", "<CMD>Oil<CR>", "Open Parent Directory")
