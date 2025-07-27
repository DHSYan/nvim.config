return {
  {
    "tjdevries/colorbuddy.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("base16-ayu-dark")
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
  { "rebelot/kanagawa.nvim",
      opts = {
          theme = "lotus",
      }
  },
  "gremble0/yellowbeans.nvim",
  "rockyzhang24/arctic.nvim",
  { "folke/tokyonight.nvim",
      opts =  {
          transparent = false,
          style = 'night',
      },
  },
  "Shatur/neovim-ayu",
  "RRethy/base16-nvim",
  "xero/miasma.nvim",
  "cocopon/iceberg.vim",
  { "kepano/flexoki-neovim", name = 'flexoki', },
  "ntk148v/komau.vim",
  "uloco/bluloco.nvim",
  "LuRsT/austere.vim",
  "ricardoraposo/gruvbox-minor.nvim",
  "NTBBloodbath/sweetie.nvim",
  {
    "maxmx03/fluoromachine.nvim",
    opts = {
            glow = true, 
            theme = "fluoromachine" 
        }
  },
  { 
    "catppuccin/nvim", 
    name = "catppucin",
    opts = {
      flavour = "latte"
    }
  }
}
