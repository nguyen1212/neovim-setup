require('podron.term')

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- navigate cursor
vim.keymap.set({"n", "v"}, "0", "$")
vim.keymap.set({"n", "v"}, "9", "0")
vim.keymap.set("i", "<C-9>", "<Home>")
vim.keymap.set("i", "<C-0>", "<End>")

-- move text and block
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- comment
vim.keymap.set({"n", "v"}, "<leader>/", ":Commentary<CR>")
vim.keymap.set({"i"}, "<leader>/", "<Esc>:Commentary<CR>")

-- navigate screen
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- find motion
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- escape hlsearch
vim.keymap.set("n", "<leader>nh", ':let @/=""<CR>')
vim.keymap.set("v", "//", [[ y/\V<C-R>=escape(@",'/\')<CR><CR> ]])

-- terminal
vim.keymap.set({"n", "t"}, "<S-Tab>", ":ToggleTerm<CR>")
vim.keymap.set("t", "<Esc>", [[ <C-\><C-n> ]])

-- copy to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- operate without cut
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
vim.keymap.set({"n", "v"}, "<leader><S-d>", [["_dd]])
vim.keymap.set({"n", "v"}, "<leader>c", [["_c]])
vim.keymap.set({"n", "v"}, "<leader>p", [["_dP]])

-- buffer  (use shift to remove delay because of other keymap)
vim.keymap.set("n", "<leader><S-n>", ":bnext<CR>")
vim.keymap.set("n", "<leader><S-p>", ":bprevious<CR>")
-- vim.keymap.set("n", "<leader><S-d>", ":bdelete<CR>")
vim.keymap.set("n", "<leader>bo", "<cmd>%bd|e#<cr>", {desc="Close all buffers but the current one"})

-- nerd tree
vim.keymap.set("n", "<Tab>f", ":NERDTreeFind<CR>")
vim.keymap.set("n", "<Tab>n", ":NERDTreeFocus<CR>")
vim.keymap.set("n", "<Tab>t", ":NERDTreeToggle<CR>")

-- telescope
vim.keymap.set("n", "<leader>pf", ":Telescope find_files hidden=true<CR>")
vim.keymap.set("n", "<C-p>", ":Telescope git_files<CR>")
vim.keymap.set("n", "<leader>l", ":Telescope buffers<CR>")
vim.keymap.set("n", "gr", ":Telescope lsp_references<CR>")
vim.keymap.set("n", "<C-g>", ":Telescope grep_string<CR>")
vim.keymap.set("n", "<leader>g", ":Telescope live_grep<CR>")
vim.keymap.set("n", "gi", ":Telescope lsp_implementations<CR>")

-- git keymap
vim.keymap.set("n", "gB", ":Git blame<CR>")
vim.keymap.set("n", "gb", ":Telescope git_branches<CR>")
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "]h", "<Plug>(GitGutterNextHunk)")
vim.keymap.set("n", "[h", "<Plug>(GitGutterPrevHunk)")
vim.keymap.set("n", "dfo", ":DiffviewOpen<CR>")
vim.keymap.set("n", "dfc", ":DiffviewClose<CR>")

-- startify
vim.keymap.set("n", "<leader>s", ":Startify<CR>")
