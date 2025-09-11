vim.g.mapleader = " "

-- open netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- bind jk to Esc in insertmode
vim.keymap.set("i", "jk", "<Esc>")

-- move highlighted line up or down using J or K respectively
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- center to screen when using ctrl d or u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- center search word when using n in search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- show warning and errors
vim.api.nvim_set_keymap("n", "<space>e", "<cmd>lua vim.diagnostic.open_float()<CR>", {})
