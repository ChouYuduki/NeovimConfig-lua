return {
  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup {
      auto_restore_enabled = false,
      suppressed_dirs = { "~/", "~/Desktop/", "~/Projects", "~/Downloads", "/"},
    }
    local keymap = vim.keymap
    keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>")
    keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>")


  end
}
