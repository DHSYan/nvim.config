-- [[ Lazy.nvim Bootstrap Install]]
-- Taken from lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)
----------------------------------------------------------------------------

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


local opts = {
    lockfile = "/home/tzen/.dotfiles/nvim.config/lazy-lock.json", -- lockfile generated after running update.
    rocks = {
        enabled = false,
        hererocks = false,
    },
    spec = { import = "plugins" } ,

}
-- "plugins" is requiring the lua module in /nvim/lua/plugins.lua
require("lazy").setup(opts);

-- [[ Keymaps ]]
require("keymaps");

-- [[ Options ]]
require("options");

-- [[ Netrw ]]
require("netrw");

-- [[ Featurs that I like from Kickstart ]]
-- the function scope line on the left, that tells you what scope you are in

-- vim.cmd("NoNeckPain")

