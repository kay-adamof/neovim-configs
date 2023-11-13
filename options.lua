return {
  opt = {
    -- set to true or false etc.
    -- relativenumber = true, -- sets vim.opt.relativenumber
    -- number = true, -- sets vim.opt.number
    -- spell = false, -- sets vim.opt.spell
    -- signcolumn = "auto", -- sets vim.opt.signcolumn to auto
    -- wrap = false, -- sets vim.opt.wrap
    -- base
    foldlevelstart = 99,
    cmdheight = 0,
    encoding = "utf-8",
    fileencoding = "utf-8",
    title = true,
    autoindent = true,
    smartindent = true,
    hlsearch = true,
    backup = false,
    showcmd = true,
    laststatus = 2,
    expandtab = true,
    scrolloff = 10,
    backupskip = { "/tmp/*", "/private/tmp/*" },
    inccommand = "split",
    ignorecase = true,
    smarttab = true,
    breakindent = true,
    shiftwidth = 2,
    tabstop = 2,
    wrap = true,
    backspace = { "start", "eol", "indent" },
    -- path:append { "**" },
    -- wildignore:append { "*/node_modules/*" },
    swapfile = false,
    -- highlight
    termguicolors = true,
    winblend = 0,
    wildoptions = "pum",
    pumblend = 5,
    -- macOS
    -- clipboard:append({ "unnamedplus" }),
  },
  g = {
    -- mapleader = " ", -- sets vim.g.mapleader
    autoformat_enabled = false, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    -- cmp_enabled = true, -- enable completion at start
    -- autopairs_enabled = true, -- enable autopairs at start
    -- diagnostics_mode = 3, -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    -- ui_notifications_enabled = true, -- disable notifications when toggling UI elements
    -- resession_enabled = false, -- enable experimental resession.nvim session management (will be default in AstroNvim v4)
  },
}
