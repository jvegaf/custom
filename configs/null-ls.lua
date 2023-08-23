local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css", "typescript", "javascript" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  b.formatting.jq,
  b.formatting.yamlfmt,

  require("typescript.extensions.null-ls.code-actions"),
}

null_ls.setup {
  debug = true,
  sources = sources,
}
