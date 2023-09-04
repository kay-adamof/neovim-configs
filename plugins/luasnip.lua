return {
  "L3MON4D3/LuaSnip",
  build = "make install_jsregexp",
  opts = function(_, opts)
    return require("astronvim.utils").extend_tbl(opts, {
      require("luasnip.loaders.from_vscode").lazy_load {
        paths = { "./lua/user/snippets" },
      },
    })
  end,
}
