-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  { import = "astrocommunity.pack.tailwindcss" },

  -- View errors <Leader>xx
  { import = "astrocommunity.diagnostics.trouble-nvim" },

  -- View types when hovering on something
  { import = "astrocommunity.utility.hover-nvim" },

  -- support for file operations using built-in LSP
  { import = "astrocommunity.lsp.nvim-lsp-file-operations" },

  -- support for todo
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
}
