vim.pack.add({
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = 'https://github.com/stevearc/oil.nvim' },
    { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
    { src = 'https://github.com/echasnovski/mini.pick' },
    { src = 'https://github.com/shortcuts/no-neck-pain.nvim' },
    { src = 'https://github.com/L3MON4D3/LuaSnip' },
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = 'https://github.com/epwalsh/obsidian.nvim' },
})

local nmap = require("util.nmap")

-- Oil
nmap("<leader>e", "<CMD>Oil<CR>", "Open Parent Directory")

reload = require("plenary.reload")
require("plugins-options.oil")
require("plugins-options.mini")
require("snippets.mysnips")
require("plugins-options.obsidian")
