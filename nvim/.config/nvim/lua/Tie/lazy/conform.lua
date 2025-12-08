-- Example conform.nvim setup
return {
  'stevearc/conform.nvim',
  lazy = false,
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' }, -- Use the installed stylua for Lua files
      python = { 'black' },
      -- etc.
    },

    format_on_save = {
      lsp_fallback = true, 
      async = true,
      timeout_ms = 500,
    },
  },
}
