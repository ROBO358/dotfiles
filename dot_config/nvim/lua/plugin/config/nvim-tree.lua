-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- open nvim-tree when vim starts
local function open_nvim_tree(data)
	-- buffer is a real file on the disk
	local real_file = vim.fn.filereadable(data.file) == 1
	-- buffer is a [No Name]
	local no_name = data.file == "" and vim.bo[data.buf].buftype == ""
	-- only files please
	if not real_file and not no_name then
		return
	end
	-- open the tree but don't focus it
	require("nvim-tree.api").tree.toggle({ focus = false })
end
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

require("nvim-tree").setup({
	update_focused_file = {
		enable = true,
	},
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 30,
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
	},
})

-- auto close
vim.api.nvim_create_autocmd("QuitPre", {
	callback = function()
		local tree_wins = {}
		local floating_wins = {}
		local wins = vim.api.nvim_list_wins()
		for _, w in ipairs(wins) do
			local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(w))
			if bufname:match("NvimTree_") ~= nil then
				table.insert(tree_wins, w)
			end
			if vim.api.nvim_win_get_config(w).relative ~= "" then
				table.insert(floating_wins, w)
			end
		end
		if 1 == #wins - #floating_wins - #tree_wins then
			-- Should quit, so we close all invalid windows.
			for _, w in ipairs(tree_wins) do
				vim.api.nvim_win_close(w, true)
			end
		end
	end,
})
