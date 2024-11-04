require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>fr", function()
  require("telescope.builtin").lsp_references()
end)

map("n", "gr", function()
  require("telescope.builtin").lsp_references()
end)

map("n", "<leader>gr", function()
  require("telescope.builtin").lsp_references()
end)

map("n", "<leader>sl", function()
  vim.diagnostic.open_float()
end)

-- Keyboard users
map("n", "<C-t>", function()
  require("menu").open("default")
end, {})

-- mouse users + nvimtree users!
map("n", "<RightMouse>", function()
  vim.cmd.exec '"normal! \\<RightMouse>"'

  local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
  require("menu").open(options, { mouse = true })
end, {})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
