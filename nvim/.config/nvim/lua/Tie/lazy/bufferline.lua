return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- required for file icons
  },
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers", -- or "tabs" for Neovim's built-in tabs
        numbers = "none",
        buffer_close_icon = "x",
        -- show the buffer numbers or 'none'
        close_command = "bdelete! %d", -- command to close a buffer
        right_mouse_command = "bdelete! %d", -- right click to close a buffer
        always_show_bufferline = true, -- show even if there is only one tab
        -- left_trunc_marker = '...',
        -- right_trunc_marker = '...',
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            text_align = "left",
            separator = true,
          },
        },
      },
    })
  end,
}
