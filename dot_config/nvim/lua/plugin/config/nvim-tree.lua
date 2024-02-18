-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- open nvim-tree when vim starts
local function open_nvim_tree()
	require("nvim-tree.api").tree.open()
end
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 25,
	},
	renderer = {
		group_empty = true,
		highlight_opened_files = name,
		highlight_git = true,
		icons = {
			glyphs = {
				git = {
					unstaged = "!",
					renamed = "»",
					untracked = "?",
					deleted = "✘",
					staged = "✓",
					unmerged = "",
					ignored = "◌",
				},
			},
		},
	},
	actions = {
		expand_all = {
			max_folder_discovery = 100,
			exclude = { ".git", "target", "build", "node_modules" },
		},
	},
	filters = {
		dotfiles = false,
		git_ignored = false,
		custom = {
			"^\\.git",
			"^node_modules",
		},
	},
})
