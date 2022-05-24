local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
--Short function name 
local keymap = vim.api.nvim_set_keymap

-- Remap and leader keys
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal mode
-- Navigations settings
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Resize 
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Buffers Navigate
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Visual Mode
-- Indent Mode
keymap ("v", "<", "<gv", opts)
keymap ("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "S-j", ":m .+1<CR>==", opts)
keymap("v", "S-k", ":m .-2<CR>==", opts)

--Visual Block
-- Move text up and down
keymap("x", "A-J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "A-K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "A-j", ":move '<-2<CR>gv-gv", opts)
keymap("x", "A-k", ":move '<-2<CR>gv-gv", opts)

-- Terminal 
-- Better Navigation
--keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
--keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
--keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
--keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
