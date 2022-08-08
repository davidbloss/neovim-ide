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
keymap("n", "\\j", "<cmd>resize -2<CR>", opts)
keymap("n", "\\k", "<cmd>resize +2<CR>", opts)
keymap("n", "\\l", "<cmd>vertical resize -2<CR>", opts)
keymap("n", "\\h", "<cmd>vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", "<cmd>bnext<CR>", opts)
keymap("n", "<S-h>", "<cmd>bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>set hlsearch!<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Plugins --

-- NvimTree
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", opts)

-- Comment
keymap("n", "<leader>/",
       "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
keymap("x", "<leader>/",
       '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')
