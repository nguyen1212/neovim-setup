vim.cmd [[ let g:go_highlight_types=1 ]]
vim.cmd [[ let g:go_highlight_fields=1 ]]
vim.cmd [[ let g:go_highlight_functions=1 ]]
vim.cmd [[ let g:go_highlight_function_calls=1 ]]
vim.cmd [[ let g:go_highlight_operators=1 ]]
vim.cmd [[ let g:go_highlight_extra_types=1 ]]
vim.cmd [[ let g:go_highlight_build_contrainst=1 ]]
vim.cmd [[ let g:go_fmt_autosave=1 ]]
vim.cmd [[ let g:go_imports_autosave=1 ]]
vim.cmd [[ let g:go_doc_popup_window=1 ]]
vim.cmd [[ let g:go_echo_command_info=1 ]]
vim.cmd [[ let g:go_fmt_command="gopls" ]]
vim.cmd [[ let g:go_gopls_gofumpt=1 ]]
vim.cmd [[ let g:go_gopls_enabled=0 ]]

-- Navigation commands
vim.cmd [[ au FileType go nmap <leader>ds <plug>(go-def-split) ]]
vim.cmd [[ au FileType go nmap <leader>dv <plug>(go-def-vertical) ]]

-- Alternate commands
vim.cmd [[ au FileType go nmap <leader>ae <plug>(go-alternate-edit) ]]
vim.cmd [[ au FileType go nmap <leader>av <plug>(go-alternate-vertical) ]]
vim.cmd [[ au FileType go nmap <leader>aa :GoAlternate!<CR> ]]

-- Common Go commands
vim.cmd [[ au FileType go nmap <leader>ct :GoCoverageToggle<CR> ]]
vim.cmd [[ au FileType go nmap <leader>c :GoCoverage<CR> ]]
vim.cmd [[ au FileType go nmap <leader>t :GoTestFunc<CR> ]]
vim.cmd [[ au FileType go nmap <leader><S-t> :GoTestFile<CR> ]]
vim.cmd [[ au FileType go nmap gie <plug>(go-iferr) ]]
vim.cmd [[ au FileType go nmap gfs :GoFillStruct<CR> ]]
vim.cmd [[ au FileType go nmap gat :GoAddTags<CR> ]]
