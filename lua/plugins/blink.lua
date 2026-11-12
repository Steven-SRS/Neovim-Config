return {
  {
    'saghen/blink.cmp',
    dependencies = {
      'saghen/blink.lib',
      'rafamadriz/friendly-snippets',
      'mikavilpas/blink-ripgrep.nvim',
    },
    build = function()
      require('blink.cmp').build():pwait()
    end,

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = { preset = 'default' },

      sources = {
        -- Include 'ripgrep' in your default sources list
        default = { 'lsp', 'path', 'snippets', 'buffer', 'ripgrep' },
        providers = {
          ripgrep = {
            module = "blink-ripgrep",
            name = "Ripgrep",
            ---@module "blink-ripgrep"
            ---@type blink-ripgrep.Options
            opts = {},
          },
        },
      },

      completion = {
        documentation = { auto_show = false },
        menu = {
          draw = {
            columns = {
              { "kind_icon" },
              { "label", "label_description", gap = 1 },
              { "source_name" },
            },
            components = {
              source_name = {
                width = { max = 30 },
                text = function(ctx)
                  if ctx.source_name == "LSP" and ctx.item.client_name then
                    return "[" .. ctx.item.client_name .. "]"
                  end
                  return "[" .. ctx.source_name .. "]"
                end,
                highlight = "BlinkCmpSource",
              },
            },
          },
        },
      },

      fuzzy = { implementation = "rust" }
    },
  },
}
