return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      view = {
        width = 30,
      },
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "➠",
              arrow_open = "↓",
            },
          },
        },
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false,
      },

      -- ✅ Keep default mappings and add custom ones
      on_attach = function(bufnr)
        local api = require("nvim-tree.api")

        -- 👇 apply all default keymaps first!
        api.config.mappings.default_on_attach(bufnr)

        -- 👇 then add your custom keymaps
        local opts = function(desc)
          return {
            desc = "nvim-tree: " .. desc,
            buffer = bufnr,
            noremap = true,
            silent = true,
            nowait = true,
          }
        end

        vim.keymap.set("n", "I", "3k", opts("Move up 3 lines"))
        vim.keymap.set("n", "K", "3j", opts("Move down 3 lines"))
      end,
    })

    -- Global toggle keymap
    vim.keymap.set("n", "tt", "<cmd>NvimTreeToggle<CR>", { noremap = true, silent = true })
  end,
}
