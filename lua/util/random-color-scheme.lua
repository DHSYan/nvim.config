print(math.random());

local T = require("telescope");

local opts = {}
local before_background = vim.o.background
local before_color = vim.api.nvim_exec2("colorscheme", { output = true }).output
local need_restore = not not opts.enable_preview

local colors = opts.colors or { before_color }
if not vim.tbl_contains(colors, before_color) then
    table.insert(colors, 1, before_color)
end

colors = vim.list_extend(
    colors,
    vim.tbl_filter(function(color)
        return not vim.tbl_contains(colors, color)
    end, vim.fn.getcompletion("", "color"))
)

-- print(require("telescope.builtin.__internal").colorscheme())



