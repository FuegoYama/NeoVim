vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

--[[motion remaps
nnoremap 
nnoremap
nnoremap
nnoremap
--]]


-- general keymaps

-- normal mode remaps
keymap.set("n", "<leader>nh", ":nohl<CR>") -- clears seach highlights

keymap.set("n", "x", '"_x') -- delets character without copying to register

keymap.set("n", "<leader>+", "<C-a>") -- increments +1
keymap.set("n", "<leader>-", "<C-x>") -- increments -1

keymap.set("n", "<leader>w", ":w<CR>") -- space + w = save
keymap.set("n", "<leader>wq", ":wq<CR>") -- space + wq = save and quit

--normal mode windows
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") --split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windosw equal witdh
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

--normal mode tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

--insert mode remaps
keymap.set("i", "nh", "<ESC>") -- n and h to exit text

--insert mode bracket doublers
keymap.set("i", "(", "()<esc>i")
keymap.set("i", "{", "{}<esc>i")
keymap.set("i", "[", "[]<esc>i")


