-- Auto format on save
local format_on_save = vim.api.nvim_create_augroup("format_on_save", {})

vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
  group = format_on_save,
  pattern = { "*" },
  command = vim.cmd("<cmd>%s/\\s\\+$//e")
})
