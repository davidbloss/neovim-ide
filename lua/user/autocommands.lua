-- Auto format on save
local format_on_save = vim.api.nvim_create_augroup("format_on_save", {})

vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
  group = format_on_save,
  pattern = { "*" },
  command = vim.cmd("%s/\\s\\+$//e")
})

-- Use 'q' to quit from common plugins
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "qf", "help", "man", "lspinfo", "spectre_panel", "lir" },
  callback = function()
    local opts = { silent = true, noremap = true  }
    vim.api.nvim_buf_set_keymap(0, "n", "q", "<cmd>close<CR>", opts)
    vim.bo.nobuflisted = true
  end,
})

-- Remove statusline and tabline when in Alpha
vim.api.nvim_create_autocmd({ "User" }, {
  pattern = { "AlphaReady" },
  callback = function()
    vim.bo.laststatus = 0
    vim.bo.showtabline = 0
    vim.api.nvim_create_autocmd({ "BufUnload" }, {
      callback = function()
        vim.bo.laststatus = 3
        vim.bo.showtabline = 2
      end
    })
  end,
})

-- Set wrap and spell in markdown and gitcommit
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "gitcommit", "markdown" },
  callback = function()
    vim.bo.spell = true
    vim.bo.wrap = true
  end,
})

vim.cmd "autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif"

-- Fixes Autocomment
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  callback = function() vim.cmd "set formatoptions-=cro" end
})

-- Highlight Yanked Text
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
  callback = function()
    vim.highlight.on_yank { higroup = "Visual", timeout = 200 }
  end,
})
