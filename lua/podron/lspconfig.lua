local lsp = require('lsp-zero')

lsp.preset('minimal')

lsp.ensure_installed({
	'gopls',
})

-- configure languague server for nvim
lsp.nvim_workspace()

-- map keymap
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  -- vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  lsp.default_keymaps({buffer = bufnr})

  local bufopts = {buffer = bufnr, remap = false}
  vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', bufopts)
  vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', bufopts)
  vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', bufopts)
  vim.keymap.set('n', '<leader>e', '<cmd>lua vim.diagnostic.goto_next()<CR>', bufopts)
  vim.keymap.set('n', '<leader>E', '<cmd>lua vim.diagnostic.goto_prev()<CR>', bufopts)
  vim.keymap.set('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', bufopts)
  vim.keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', bufopts)
  vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', bufopts)
  vim.keymap.set('n', '<leader>f', '<cmd>lua vim.lsp.buf.format()<CR>', bufopts)
  vim.keymap.set('n', '<leader>dd', '<cmd>lua vim.diagnostic.setloclist()<CR>', bufopts)
  vim.keymap.set('n', '<leader>do', '<cmd>lua vim.diagnostic.open_float()<CR>', bufopts)
end

-- lsp.on_attach(on_attach)

-- setup lua ls for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

-- nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- setup config for gopls
require('lspconfig')['gopls'].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lsp.setup()

--
-- Nvim-cmp
--

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
cmp.setup({
  completion = {
	  completeopt = 'menu,menuone,noinsert'
  },

  preselect = 'item',

  snippet = {
	  expand = function (args)
		  require('luasnip').lsp_expand(args.body)
	  end,
  },

  performance = {
	  trigger_debounce_time = 100,
	  throttle = 50,
	  fetching_timeout = 50,
  },

  sources = {
	  { name = 'nvim_lsp', priority = 1000, group_index = 1, max_item_count = 30 },
	  -- { name = "nvim_lua" , priority = 750, group_index = 2 },
	  -- { name = "luasnip", priority = 500, group_index = 3 },
	  -- { name = "path", priority = 250, group_index = 4 },
	  { name = "buffer", priority = 100, keyword_length = 5, group_index = 5 },
  },

  mapping = {
	  ['<CR>'] = cmp.mapping.confirm({select = true}),
	  ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
	  ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
	  ['<C-Space>'] = cmp.mapping.complete(),
	  -- ['<C-d>'] = cmp.mapping.scroll_docs(4),
	  -- ['<C-u>'] = cmp.mapping.scroll_docs(-4),
  },

  -- window = {
	  -- completion = cmp.config.window.bordered(),
	  -- documentation = cmp.config.window.bordered(),
  -- },

  formatting = {
    format = require('lspkind').cmp_format({
	    mode = "text",
	    menu = {
		    buffer = "[Buffer]",
		    nvim_lsp = "[LSP]",
		    -- nvim_lua = "[API]",
		    -- path = "[Path]",
		    -- luasnip = "[Snip]",
		    -- tn = "[TabNine]",
		    -- eruby = "[ERB]",
	    },
    }),
  },
})
