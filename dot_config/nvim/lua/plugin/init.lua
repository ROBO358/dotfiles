return {
	{
		"shaunsingh/nord.nvim",
		config = function()
			require("plugin/config/nord")
		end,
		lazy = false,
		priority = 1000,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"AndreM222/copilot-lualine",
		},
		config = function()
			require("plugin/config/lualine")
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("plugin/config/nvim-tree")
		end,
	},
	{
		"lukas-reineke/headlines.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("plugin/config/headlines")
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("plugin/config/treesitter")
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sharkdp/fd",
			"nvim-treesitter/nvim-treesitter",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("plugin/config/telescope")
		end,
	},
	{
		"dinhhuy258/git.nvim",
		config = function()
			require("plugin/config/git")
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("plugin/config/gitsigns")
		end,
	},
	{
		"brenoprata10/nvim-highlight-colors",
		config = function()
			require("plugin/config/nvim-highlight-colors")
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		config = function()
			require("plugin/config/indent-blankline")
		end,
	},
	{
		"numToStr/Comment.nvim",
		dependencies = {
			"shaunsingh/nord.nvim",
		},
		opts = {},
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {},
		config = function()
			require("plugin/config/toggleterm")
		end,
	},
	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
		config = function()
			require("plugin/config/nvim-surround")
		end,
	},
	{
		"pechorin/any-jump.vim",
		event = "VeryLazy",
	},

	-- LSP
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("plugin/config/nvim-lspconfig")
		end,
	},
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			require("plugin/config/mason")
		end,
	},
	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"nvimtools/none-ls.nvim",
		},
		config = function()
			require("plugin/config/null-ls")
		end,
	},
	-- CMP and Snippets
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			{
				"L3MON4D3/LuaSnip",
				dependencies = {
					"rafamadriz/friendly-snippets",
					"saadparwaiz1/cmp_luasnip",
				},
				version = "v2.*",
				build = "make install_jsregexp",
				config = function()
					require("plugin/config/luasnip")
				end,
			},
		},
		event = {
			"InsertEnter",
			"CmdlineEnter",
		},
		config = function()
			require("plugin/config/nvim-cmp")
		end,
	},

	-- GitHub Copilot
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("plugin/config/copilot")
		end,
	},
	{
		"zbirenbaum/copilot-cmp",
		config = function()
			require("plugin/config/copilot-cmp")
		end,
	},
}
