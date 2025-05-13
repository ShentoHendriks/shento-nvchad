require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Nvim Tree
map("n", "<leader>ee", "<cmd> NvimTreeToggle <CR>", { desc = "Toggle File explorer" })
map("n", "<leader>ef", "<cmd> NvimTreeFindFile <CR>", { desc = "Toggle File explorer" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
