-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = {
		  {'nvim-lua/plenary.nvim'},
		  { "nvim-telescope/telescope-live-grep-args.nvim" },
	  },
	  config = function()
		  require("telescope").load_extension("live_grep_args")
	  end
  }

  -- find files
  use {	  'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }


  -- auto complete
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},     -- Required
		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
		  {'hrsh7th/cmp-nvim-lua'}, -- Required
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'hrsh7th/cmp-cmdline'},
		  {'L3MON4D3/LuaSnip'},     -- Required
		  {'onsails/lspkind.nvim'},
	  }
  }

  -- code comment
  use 'tpope/vim-commentary'

  -- colorscheme
  use 'morhetz/gruvbox'
  use 'EdenEast/nightfox.nvim'
  use 'sonph/onehalf'

  -- startify
  use 'mhinz/vim-startify'

  -- go extension
  use {'fatih/vim-go', run = 'GoUpdateBinaries' }
  use 'AndrewRadev/splitjoin.vim'
  use 'SirVer/ultisnips'
  use 'jiangmiao/auto-pairs'
  use 'fatih/gomodifytags'

  -- git 
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'
  use "sindrets/diffview.nvim"

  -- file tree
  use 'preservim/nerdtree'

  -- status bar
  use {
	  'vim-airline/vim-airline',
	  'vim-airline/vim-airline-themes',
	  'majutsushi/tagbar'
  }

  -- progress
  use {
	  'linrongbin16/lsp-progress.nvim',
	  requires = {'nvim-tree/nvim-web-devicons'},
	  config = function()
		  require('lsp-progress').setup()
	  end
  }

  -- terminal 
  use {"akinsho/toggleterm.nvim", tag = '*'}

  -- icon
  use  'ryanoasis/vim-devicons'

  -- csv
  use 'mechatroner/rainbow_csv'

end)
