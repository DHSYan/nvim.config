-- -- Captppuccin
-- local catppuccin = {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   priority = 1000,
--   config = function()
--     require('catppuccin').setup({
--       flavour = "mocha"
--     })
--
--     vim.cmd.colorscheme 'catppuccin'
--   end,
-- }
--
-- -- Kanagawa
-- local kanagawa = {
--     "rebelot/kanagawa.nvim",
--     priority = 1000,
--     config = function()
--         require('kanagawa').setup({
--             theme = "lotus"
--         })
--         vim.cmd.colorscheme 'kanagawa'
--     end
-- }
--
-- local tokyonight = {
--     "folke/tokyonight.nvim",
--     lazy = false,
--     priority = 1000,
--     opts = {},
--     config = function()
--         require("tokyonight").setup({
--             style = 'night',
--             transparent = false,
--
--         })
--         vim.cmd.colorscheme 'tokyonight'
--         vim.cmd("hi ColorColumn guibg='grey'")
--     end
-- }
--
-- local flexoki = {
--     'kepano/flexoki-neovim',
--     name = 'flexoki',
--     config = function() 
--         require("flexoki").setup({
--         })
--         vim.cmd.colorscheme 'flexoki-dark'
--         vim.cmd("hi ColorColumn guibg='grey'")
--     end
--
-- }

return {

  {
    "tjdevries/colorbuddy.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("gruvbox-minor")
      vim.cmd("hi ColorColumn guibg='grey'")
    end,
  },
  "rktjmp/lush.nvim",
  "tckmn/hotdog.vim",
  "dundargoc/fakedonalds.nvim",
  "craftzdog/solarized-osaka.nvim",
  { "rose-pine/neovim", name = "rose-pine" },
  "eldritch-theme/eldritch.nvim",
  "jesseleite/nvim-noirbuddy",
  "vim-scripts/MountainDew.vim",
  "miikanissi/modus-themes.nvim",
  "rebelot/kanagawa.nvim",
  "gremble0/yellowbeans.nvim",
  "rockyzhang24/arctic.nvim",
    { "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                style = 'night',
                transparent = false,

            })
        end
    },
  "Shatur/neovim-ayu",
  "RRethy/base16-nvim",
  "xero/miasma.nvim",
  "cocopon/iceberg.vim",
    { "kepano/flexoki-neovim",
        name = 'flexoki',
        -- config = function() 
        --     require("flexoki").setup({
        --     })
        -- end
    },
  "ntk148v/komau.vim",
  { "catppuccin/nvim", name = "catppuccin" },
  "uloco/bluloco.nvim",
  "LuRsT/austere.vim",
  "ricardoraposo/gruvbox-minor.nvim",
  "NTBBloodbath/sweetie.nvim",
  {
    "maxmx03/fluoromachine.nvim",
    -- config = function()
    --   local fm = require "fluoromachine"
    --   fm.setup { glow = true, theme = "fluoromachine" }
    -- end,
  },
}
