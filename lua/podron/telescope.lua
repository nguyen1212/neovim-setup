-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>ps', function()
-- 	builtin.grep_string({ searcch = vim.fn.input("Grep > ") });
-- end)

require('telescope').setup{}

require('telescope').load_extension('fzf')
