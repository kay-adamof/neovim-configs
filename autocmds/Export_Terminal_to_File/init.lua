local augroup = vim.api.nvim_create_augroup("ExportTerminal", {})
local current_time_formated = os.date "%Y%m%d_%H%M%S"
local ext = ".term.log"
local dir_for_logs = ".logs"

vim.api.nvim_clear_autocmds { group = augroup }
vim.api.nvim_create_autocmd({ "TermOpen" }, {
  group = augroup,
  -- Make a new log file
  callback = function()
    vim.api.nvim_command("! mkdir -p " .. dir_for_logs)
    vim.api.nvim_command("! touch " .. dir_for_logs .. "/" .. current_time_formated .. ext)
  end,
})

vim.api.nvim_create_autocmd({ "TermLeave" }, {
  group = augroup,
  callback = function()
    local success, error_message = pcall(function()
      -- Write logs of the current terminal's command history
      vim.api.nvim_command(":w !tee >> " .. dir_for_logs .. "/" .. current_time_formated .. ext)
      current_time_formated = os.date "%Y%m%d_%H%M%S"
    end)
  end,
})
