return{
  'brenoprata10/nvim-highlight-colors',
  opts = {
    -- Change render style to virtual text with a square symbol
    render = 'virtual',
    virtual_symbol = '■', -- or '●', '█', etc.
    virtual_symbol_suffix = ' ', -- Add a space after the symbol

    enable_short_hex = true,

    enable_rgb = true,
  },
  config = function()
    vim.opt.termguicolors = true -- Make sure this is set
    require('nvim-highlight-colors').setup({
      render = 'background',
      enable_filetypes = { 'css', 'scss', 'stylus', 'less', 'sass', 'go', 'lua', 'html', 'json', 'yaml', 'hyprlang' },
    })
  end,
}
