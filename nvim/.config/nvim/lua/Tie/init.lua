require("Tie.map")
require("Tie.set")
require("Tie.lazy_init")
vim.filetype.add({
  pattern = {
    ['.*/hypr/.*%.conf'] = 'hyprlang',
    -- Add other relevant files if needed, e.g., if you use a separate colors file
    ['.*/hypr/core/.*%.conf'] = 'hyprlang',
  },
})
