return {
  {
    'saghen/blink.cmp',
    version = '1.*', -- uses prebuilt binaries for the Rust fuzzy matcher
    dependencies = { 'rafamadriz/friendly-snippets' },

    opts = {
      keymap = { preset = 'default' },

      appearance = {
        nerd_font_variant = 'mono',
      },

      -- Only show the documentation popup when manually triggered
      completion = { documentation = { auto_show = false } },

      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },

      fuzzy = { implementation = 'prefer_rust_with_warning' },
    },

    opts_extend = { 'sources.default' },
  },
}
