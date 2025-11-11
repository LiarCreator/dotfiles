return {
  -- Your existing plugins (mason, lspconfig, etc.)...

  -- Autocompletion
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      -- Core sources
      "hrsh7th/cmp-nvim-lsp", -- nvim-cmp source for LSP
      "hrsh7th/cmp-buffer",   -- nvim-cmp source for buffer words
      "hrsh7th/cmp-path",     -- nvim-cmp source for file paths
      "hrsh7th/cmp-cmdline",  -- nvim-cmp source for command-line
      "saadparwaiz1/cmp_luasnip", -- nvim-cmp source for snippets

      -- Snippet engine
      "L3MON4D3/LuaSnip",
      "rafamadriz/friendly-snippets",
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
        }),
        mapping = cmp.mapping.preset.insert({
          ["<C-p>"] = cmp.mapping.select_prev_item(),
          ["<C-n>"] = cmp.mapping.select_next_item(),
          ["<C-y>"] = cmp.mapping.confirm({ select = true }),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-d>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
        }),
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
      })

      -- Set up cmp for command line
      cmp.setup.cmdline(":", {
        sources = cmp.config.sources({
          { name = "cmdline" },
          { name = "path" },
        }),
      })
    end,
  },
}
