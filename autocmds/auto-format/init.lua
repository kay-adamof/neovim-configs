-- Insert leave
-- stylua

-- stylua is installed or not
-- TODO: how to run command in if statement
--[[ if vim.api.nvim_cmd("echo executable('stylua')") == 1 then
  print("stylua is not installed,")
  return
end ]]

-- How to get bufnr?
--
-- local augroup = vim.api.nvim_create_augroup("FormatOnSave", {})
-- vim.api.nvim_clear_autocmds { group = augroup }
-- vim.api.nvim_create_autocmd({ "InsertLeave" }, {
--   pattern = { "*.lua" },
--   group = augroup,
--   command = "! stylua %",
-- })
vim.api.nvim_create_augroup("format_on_leave", { clear = true })
vim.api.nvim_create_autocmd("InsertLeave", {
  desc = "Auto format before leave from insert-mode",
  group = "format_on_leave",
  pattern = { "*.tsx", "*.ts", "*.js", "*.jsx", "*.html", "*.md", "*.mdx", "*.yml" },
  command = "%!bunx prettier --stdin-filepath %",
})
