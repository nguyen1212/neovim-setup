vim.diagnostic.config({
  -- virtual_text = true,
  severity_sort = true,
  -- float = {
  --   source = "always",  -- Or "if_many"
  -- },
})

local signs = { Error = "✘", Warn = "▲", Hint = "●", Info = "▶" }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Diagnostic colors
vim.cmd [[ hi DiagnosticError ctermfg=167 guifg=#fb4934 ]]
vim.cmd [[ hi DiagnosticWarn ctermfg=214 guifg=#fabd2f ]]
vim.cmd [[ hi DiagnosticInfo ctermfg=109 guifg=#83a598 ]]
-- vim.cmd [[ hi DiagnosticUnderlineError cterm=undercurl guisp=Red gui=undercurl ]]
vim.cmd [[ hi DiagnosticUnderlineError guifg=#fb4934 ]]
