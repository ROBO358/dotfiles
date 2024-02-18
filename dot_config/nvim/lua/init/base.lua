local opt = vim.opt

-- エラー時の音を画面表示に
vim.opt.visualbell = true

-- ファイルの文字コードをUTF-8に設定
vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
-- 「※」等の記号を打つと、半角文字と重なる問題がある。「※」などを全角文字の幅で表示するために設定する
opt.ambiwidth = "double"

-- タブバーの表示
opt.showtabline = 2

-- 2文字分の幅を持ったTABが表示される
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
-- tabstop で設定した数の分の半角スペースが入力される
opt.expandtab = true
-- カーソル行からの相対的な行番号を表示する
opt.relativenumber = true
opt.termguicolors = true
-- 行番号を表示
opt.number = true

-- 新しい行を改行で追加した時に、ひとつ上の行のインデントを引き継がせる
opt.autoindent = true
opt.smartindent = true
-- カーソルが存在する行にハイライトを
opt.cursorline = true

-- 改行や行末でカーソルが移動するように
opt.whichwrap = "b,s,[,],<,>"
-- インデントや行末でバックスペースが効くように
opt.backspace = "indent,eol,start"

-- 数値の表示形式を設定 (bin,hex でバイナリや16進数を認識)
opt.nrformats = "bin,hex"

-- 対応する括弧をハイライト
opt.showmatch = true
opt.matchtime = 1

-- yank した文字列をクリップボードにコピー
opt.clipboard = "unnamedplus"

-- 検索した文字をハイライトする
opt.hls = true
-- 大文字小文字を区別しない
opt.ignorecase = true
-- 検索時のプレビューを分割ウィンドウで表示
opt.inccommand = "split"
-- 検索時にインクリメンタルサーチを有効化
opt.incsearch = true

-- ファイル名補完
opt.wildmode = "list:longest"
-- ステータスラインを常に表示(global)
opt.laststatus = 3

-- ターミナルでのカラーを有効化
opt.termguicolors = true

-- スクロール時のオフセット
opt.scrolloff = 5

-- 画面を縦分割する際に右,下に開く
opt.splitright = true
opt.splitbelow = true

-- マウス操作を有効化
opt.mouse = "a"

-- 非表示ファイルを表示
opt.hidden = true

-- ヘルプ言語を日本語と英語に設定
opt.helplang = "ja", "en"

-- ウィンドウの透明度を設定
opt.winblend = 20
opt.pumblend = 20

-- バックアップファイルを作成しない
opt.backup = false
-- スワップファイルを作成する
opt.swapfile = true
-- アップデート間隔
opt.updatetime = 300
