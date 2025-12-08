vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Window (split settings)
vim.keymap.set("n", "<Leader>v", "<C-w>v", { desc = "Vertical split" })
vim.keymap.set("n", "<Leader>s", "<C-w>s", { desc = "Horizontal split" })
vim.keymap.set("n", "<Leader>h", "<C-w>h", { desc = "Move to left Split"})
vim.keymap.set("n", "<Leader>j", "<C-w>j", { desc = "Move to down Split"})
vim.keymap.set("n", "<Leader>k", "<C-w>k", { desc = "Move to up Split"})
vim.keymap.set("n", "<Leader>l", "<C-w>l", { desc = "Move to right Split"})
vim.keymap.set("n", "H", vim.cmd.bprevious, {desc = "Go to previous buffer"})
vim.keymap.set("n", "L", vim.cmd.bnext, {desc = "Go to next buffer"})
vim.keymap.set("n", "<C-x>", vim.cmd.close, { desc = "Close current split" })


vim.keymap.set("n", "<leader>e", function()
  vim.cmd.Neotree("toggle")
end, { desc = "Toggle Neotree" })

vim.keymap.set("n", "<leader>v", "<C-w>v", { desc = "Vertical split" })
vim.keymap.set("n", "<leader>s", "<C-w>s", { desc = "Horizontal split" })
-- Telescope keymaps
vim.keymap.set("n", "<leader>ff", function()
  require("telescope.builtin").find_files({
    previewer = false,
  })
end, { desc = "Find files" })

vim.keymap.set("n", "<leader>fg", function()
  require("telescope.builtin").live_grep()
end, { desc = "Live grep" })

vim.keymap.set("n", "<leader>fb", function()
  require("telescope.builtin").buffers()
end, { desc = "Find buffers" })

vim.keymap.set("n", "<leader>fh", function()
  require("telescope.builtin").help_tags()
end, { desc = "Help tags" })
vim.keymap.set('n', 'TE', function()
    require('telescope.builtin').diagnostics()
end, { desc = 'Telescope: List project diagnostics' })
-- Add this to your main keymap setup file
vim.keymap.set('n', 'E', function()
    -- Opens a floating window with the diagnostic message for the current line
    vim.diagnostic.open_float()
end, { desc = 'Open floating diagnostic window' })
