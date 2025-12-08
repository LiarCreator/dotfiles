return {
  'mfussenegger/nvim-lint',
  event = {'BufWritePost', 'BufReadPost'},
  config = function()
    local lint = require('lint')
    lint.linters_by_ft = {
      javascript = { 'eslint' },
      javascriptreact = { 'eslint' },
      typescript = { 'eslint' },
      typescriptreact = { 'eslint' },
      css = { 'stylelint' },
      scss = { 'stylelint' },
      html = {'htmlhint'},
      json = {'jsonlint'},
      yaml = {'yamllint'},
      lua = {'luacheck'},
      python = {'flake8'},
    }
    vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost"}, {
      callback = function()
        lint.try_lint()
      end,
    })
    vim.keymap.set('n', '<leader>cl', '<cmd>Lint<CR>', {desc = 'Manually Trigger Lint'})
    vim.keymap.set('n', '<leader>cL', '<cmd>LintDisable<CR>', {desc = 'Disable Lint for Current Buffer'})
  end
}
