vim.pack.add({
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = 'https://github.com/stevearc/oil.nvim' },
    { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
    { src = 'https://github.com/nvim-telescope/telescope.nvim' },
    { src = 'https://github.com/nvim-lua/plenary.nvim' },
    { src = 'https://github.com/BurntSushi/ripgrep' },
})

local nmap = require("util.nmap")

treesitter_opt = {
    ensure_installed = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "markdown",
        "markdown_inline",
        "latex",
    },
    sync_install = false,
    highlight = {
        enable = true,
        disable = { "tex" , "latex"},
    },
    indent = { enable = true },
}


oil_opt = {
    view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,
        -- This function defines what is considered a "hidden" file
        is_hidden_file = function(name, bufnr)
            return vim.startswith(name, ".")
        end,
        -- This function defines what will never be shown, even when `show_hidden` is set
        is_always_hidden = function(name, bufnr)
            return vim.endswith(name, ".un~")
        end,
        -- Sort file names in a more intuitive order for humans. Is less performant,
        -- so you may want to set to false if you work with large directories.
        natural_order = true,
        sort = {
            -- sort order can be "asc" or "desc"
            -- see :help oil-columns to see which columns are sortable
            { "type", "asc" },
            { "name", "asc" },
        },
    },   
}
require("oil").setup(oil_opt)
require("nvim-treesitter.configs").setup(treesitter_opt)
