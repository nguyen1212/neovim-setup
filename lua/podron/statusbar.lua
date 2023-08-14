vim.cmd[[ let g:airline_theme = 'luna' ]]

-- enable tabline
vim.g["airline#extensions#tabline#enabled"] = 1
vim.g["airline#extensions#tabline#left_sep"] = ''
vim.g["airline#extensions#tabline#left_alt_sep"] = ''
vim.g["airline#extensions#tabline#right_sep"] = ''
vim.g["airline#extensions#tabline#right_alt_sep"] = ''
vim.g["airline#extensions#hunks#enabled"] = 1
vim.g["airline#extensions#hunks#coc_git"] = 1
vim.g["airline_stl_path_style"] = 'short'
vim.g["airline#extensions#branch#enabled"] = 1
vim.g["airline#extensions#branch#empty_message"] = ''
vim.g["airline#extensions#branch#displayed_head_limit"] = 30
vim.g["airline#extensions#branch#sha1_len"] = 30
vim.g["airline#extensions#whitespace#enabled"] = 0
vim.cmd[[ let g:airline_mode_map = {
      \ '__'     : '-',
      \ 'c'      : 'C',
      \ 'i'      : 'I',
      \ 'ic'     : 'I',
      \ 'ix'     : 'I',
      \ 'n'      : 'N',
      \ 'multi'  : 'M',
      \ 'ni'     : 'N',
      \ 'no'     : 'N',
      \ 'R'      : 'R',
      \ 'Rv'     : 'R',
      \ 's'      : 'S',
      \ 'S'      : 'S',
      \ 't'      : 'T',
      \ 'v'      : 'V',
      \ 'V'      : 'V',
      \ ''     : 'V',
      \ }
]]

-- enable powerline fonts
vim.g["airline_powerline_fonts"] = 1
vim.g["airline_left_sep"] = ''
vim.g["airline_right_sep"] = ''


-- setting sections
vim.g["airline_section_c"] = ''
vim.g["airline_section_x"] = ''
vim.g["airline_section_z"] = '%c'

vim.cmd [[ 
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
]]

vim.g["airline_symbols.linenr"] = ' '
vim.g["airline_symbols.maxlinenr"] = ''
vim.g["airline_symbols.colnr"] = ' '

vim.opt.showtabline = 2
vim.cmd [[ set noshowmode ]]
