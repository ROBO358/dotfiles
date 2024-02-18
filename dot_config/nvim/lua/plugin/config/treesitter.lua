require("nvim-treesitter.configs").setup({
	ensure_installed = all,
	sync_install = false,
	highlight = { enable = true },
	indent = { enable = true },
	autotag = { enable = true },
})
