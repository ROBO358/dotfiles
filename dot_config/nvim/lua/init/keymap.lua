local keymap = vim.keymap

vim.g.mapleader = " "

-- 画面分割
keymap.set("n", "<leader>ss", ":split<Return><C-w>w")
keymap.set("n", "<leader>sv", ":vsplit<Return><C-w>w")

-- タブ移動
keymap.set("n", "<leader>tt", ":tabnew<Return>")
keymap.set("n", "<leader>tw", ":tabclose<Return>")
keymap.set("n", "<leader>tl", ":tabnext<Return>")
keymap.set("n", "<leader>th", ":tabprevious<Return>")

-- ウィンドウの移動
keymap.set("n", "<leader>wh", "<C-w>h")
keymap.set("n", "<leader>wk", "<C-w>k")
keymap.set("n", "<leader>wj", "<C-w>j")
keymap.set("n", "<leader>wl", "<C-w>l")

-- 全選択
keymap.set("n", "<leader>a", "gg<S-v>G")

-- 行端まで移動
keymap.set("n", "<leader>h", "^")
keymap.set("n", "<leader>l", "$")

-- jj で Esc する
keymap.set("i", "jj", "<Esc>")

-- 行末までのyank
keymap.set("n", "Y", "y$")

-- fを押すとハイライトを消す
keymap.set("n", "<leader>f", ":nohlsearch<CR>")

-- ;と:を入れ替え
keymap.set("n", ";", ":")

-- コンマの後に自動的にスペースを挿入
keymap.set("i", ",", ",<Space>")

-- 設定ファイルを開く
keymap.set("n", "<F1>", ":edit $MYVIMRC<CR>")
