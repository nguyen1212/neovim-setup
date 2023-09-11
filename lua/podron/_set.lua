vim.opt.guicursor = ""
-- vim.opt.guifont = "JetBrains Mono"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.opt.laststatus = 2

vim.opt.cursorline = true

-- vim.opt.hidden = true

vim.cmd [[ syntax on ]]

vim.cmd [[ lang en_US.UTF-8 ]]

-- set diff relative to base 
vim.cmd [[ let g:gitgutter_diff_base = 'head' | ":GitGutter<CR>" ]]
