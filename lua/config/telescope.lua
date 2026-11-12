vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "[S]earch [G]it Files" })

vim.keymap.set("n", "<leader>ss", function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "[S]earch [S]tring" })
