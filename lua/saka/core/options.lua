vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.number = true

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

-- change default split windows location 
opt.splitright = true
opt.splitbelow = true


