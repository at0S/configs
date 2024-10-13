-- acroding to mastermind this is requred and understanding of this is not required
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- aliasing keymap function
local keymap = vim.api.nvim_set_keymap

-- setting space leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- [e]xplorer
keymap("n", "<leader>e", ":Lex 43<cr>", opts)

-- navigating buffers
keymap("n", "<S-l>", ":bnext<cr>", opts)
keymap("n", "<S-h>", ":bprevious<cr>", opts)

-- identing stuff, not sure if it works for me.
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text up and down like a boss
keymap("v", "<A-j>", ":m .+1<cr>==", opts)
keymap("v", "<A-k>", ":m .-2<cr>==", opts)
keymap("v", "p", '"_dp', opts)
