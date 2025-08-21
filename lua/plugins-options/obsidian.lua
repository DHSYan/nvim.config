require("obsidian").setup({
    workspaces = {
        {
            name = "second-brain",
            path = "~/second-brain",
        },
    },
    templates = {
        folder = "templates",
        date_format = "%Y-%m-%d",
        time_format = "%H:%M",
        -- A map for custom variables, the key should be the variable and the value a function
        substitutions = {},
    },
    daily_notes = {
        -- Optional, if you keep daily notes in a separate directory.
        folder = "daily-notes",
        -- Optional, if you want to change the date format for the ID of daily notes.
        date_format = "%Y-%m-%d",
        -- Optional, if you want to change the date format of the default alias of daily notes.
        alias_format = "%B %-d, %Y",
        -- Optional, default tags to add to each new daily note created.
        default_tags = { "daily-notes" },
        -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
        template = "daily-notes.md"
    },

    picker = {
        name = "mini.pick",
        note_mappings = {
            new = "<C-x>",
            insert_link = "<C-l>",
        },
        tag_mappings = {
            tag_note = "<C-x>",
            insert_tag = "<C-l>",
        },
    },

    follow_img_func = function(img)
        vim.fn.jobstart({ "feh", img }) -- linux
    end,

    attachments = {
        -- The default folder to place images in via `:ObsidianPasteImg`.
        -- If this is a relative path it will be interpreted as relative to the vault root.
        -- You can always override this per image by passing a full path to the command instead of just a filename.
        img_folder = "assets/", -- This is the default
        -- TODO

        -- Optional, customize the default name or prefix when pasting images via `:ObsidianPasteImg`.
        ---@return string
        img_name_func = function()
            -- Prefix image names with timestamp.
            return string.format("%s-", os.time())
        end,

        -- A function that determines the text to insert in the note when pasting an image.
        -- It takes two arguments, the `obsidian.Client` and an `obsidian.Path` to the image file.
        -- This is the default implementation.
        ---@param client obsidian.Client
        ---@param path obsidian.Path the absolute path to the image file
        ---@return string
        img_text_func = function(client, path)
            path = client:vault_relative_path(path) or path
            return string.format("![%s](%s)", path.name, path)
        end,
    },

    ---@return table
    note_frontmatter_func = function(note)
        -- Add the title of the note as an alias.
        if note.title then
            note:add_alias(note.title:gsub("-", " "):lower())
        end

        local out = { id = note.id, aliases = note.aliases, tags = note.tags, creation_date = os.time(), }

        -- `note.metadata` contains any manually added fields in the frontmatter.
        -- So here we just make sure those fields are kept in the frontmatter.
        if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
            for k, v in pairs(note.metadata) do
                out[k] = v
            end
        end

        return out
    end,
})


vim.keymap.set('n', '<leader>otd', vim.cmd.ObsidianToday)
vim.keymap.set('n', '<leader>oyd', vim.cmd.ObsidianYesterday)
vim.keymap.set('n', '<leader>os', vim.cmd.ObsidianSearch)
