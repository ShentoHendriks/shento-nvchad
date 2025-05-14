require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Nvim Tree
map("n", "<leader>ee", "<cmd> NvimTreeToggle <CR>", { desc = "nvimtree Toggle File explorer" })
map("n", "<leader>ef", "<cmd> NvimTreeFindFile <CR>", { desc = "nvimtree Toggle File explorer opened file" })

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- vim-latex
-- Rebind the LaTeX compile command to 'll' in Normal mode
vim.api.nvim_set_keymap(
  "n",
  "<leader>ll",
  "<cmd>VimtexCompile<CR>",
  { desc = "vim-latex Enable compiling", silent = true }
)
-- vim-latex view pdf file
vim.api.nvim_set_keymap("n", "<leader>lv", "<cmd>VimtexView<CR>", { desc = "vim-latex View pdf", silent = true })
