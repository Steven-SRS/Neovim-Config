require("config.lazy")

require("vim._core.ui2").enable({})
require("options")
require("keymaps")

require("config.telescope")
require("config.treesitter")
require("config.undotree")
require("config.mini")
require("config.lsp")
require("config.dadbod")
require("config.inline-diagnostic")

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
  end,
})
-- Trigger it once immediately for current session
vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
