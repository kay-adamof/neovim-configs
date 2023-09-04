return {
  options = {
    g = {
      icons_enabled = true,
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

    vim.o.foldlevelstart = 99 -- Foldings fully opened
    require "user.functions"
    require "user.keymaps"
    require "user.autocmds"
  end,
}
