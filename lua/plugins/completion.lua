return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "onsails/lspkind.nvim",  
    },
    opts = function(_, opts)
      local cmp = require("cmp")
      local lspkind = require("lspkind")

      -- 1. Create rounded, padded dropdown frames
      opts.window = {
        completion = cmp.config.window.bordered({
          border = "rounded",
          winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
        }),
        documentation = cmp.config.window.bordered({
          border = "rounded",
          winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
        }),
      }

       
      opts.formatting = {
        fields = { "kind", "abbr", "menu" },
        format = lspkind.cmp_format({
          mode = "symbol_text",
          maxwidth = 50,
          ellipsis_char = "...",
          before = function(entry, vim_item)
            vim_item.menu = ({
              nvim_lsp = "[LSP]",
              luasnip = "[Snippet]",
              buffer = "[Buffer]",
              path = "[Path]",
            })[entry.source.name]
            return vim_item
          end,
        }),
      }

      return opts
    end,
  },
}
