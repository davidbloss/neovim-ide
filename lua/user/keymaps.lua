-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

keymap("n", "<F1>", "<ESC>", opts)
keymap("n", "Y", "yy", opts)

-- Move line up or down
keymap("n", "-", "ddp", opts)
keymap("n", "_", "ddkP", opts)

-- Surround word with quotes, parenthesis, braces, brackets
keymap("n", "<leader>\"", "viw<ESC>a\"<ESC>bi\"<ESC>lel", opts)
keymap("n", "<leader>'", "viw<ESC>a'<ESC>bi'<ESC>lel", opts)
keymap("n", "<leader>[", "viw<ESC>a]<ESC>bi[<ESC>lel", opts)
keymap("n", "<leader>(", "viw<ESC>a)<ESC>bi(<ESC>lel", opts)
keymap("n", "<leader>{", "viw<ESC>a}<ESC>bi{<ESC>lel", opts)
keymap("n", "<leader><", "viw<ESC>a><ESC>bi<<ESC>lel", opts)

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "\\j", ":resize -2<CR>", opts)
keymap("n", "\\k", ":resize +2<CR>", opts)
keymap("n", "\\l", ":vertical resize -2<CR>", opts)
keymap("n", "\\h", ":vertical resize +2<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
