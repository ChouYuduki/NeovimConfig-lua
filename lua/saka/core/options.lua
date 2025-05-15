vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.number = true
opt.list = true

-- tabs 
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true


opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true
opt.background = "dark"
opt.termguicolors = true
opt.signcolumn = "yes"


opt.backspace = "indent,eol,start"

-- allows paste from and into other place freely
opt.clipboard:append("unnamedplus")

vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local last_pos = vim.fn.line([['"]])
    if last_pos > 1 and last_pos <= vim.fn.line("$") then
      vim.cmd('normal! g\'"')
    end
  end,
})


