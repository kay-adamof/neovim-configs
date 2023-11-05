return {
  lsp = {
    formatting = {
      format_on_save = false,
      timeout_ms = 7200,
      disabled = {
        "eslint_d",
      },
    },
  },
  colorscheme = "catppuccin",

  polish = function()
    local unmap = vim.keymap.del
    unmap("t", "<C-h>")
    unmap("t", "<C-j>")
    unmap("t", "<C-k>")
    unmap("t", "<C-l>")

    vim.api.nvim_create_autocmd({ "BufEnter", "BufAdd", "BufNew", "BufNewFile", "BufWinEnter" }, {
      group = vim.api.nvim_create_augroup("TS_FOLD_WORKAROUND", {}),
      callback = function()
        vim.opt.foldmethod = "expr"
        vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
      end,
    })

    require "user.functions"
    require "user.keymaps"
    require "user.autocmds"
  end,
}
