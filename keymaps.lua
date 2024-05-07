vim.g.mapleader = " " -- leader = <space>

local keymap = vim.keymap -- for conciseness


-- general keymaps

-- normal mode remaps
keymap.set("n", "k", "i") -- enters insert mode from normal mode
keymap.set("n", "K", "I") -- insert at beginning of line

-- normal mode motion

keymap.set("n", "n", "h") -- cursor left 
keymap.set("n", "e", "j") -- cursor down a terminal line
keymap.set("n", "u", "k") -- cursor up a terminal line
keymap.set("n", "i", "l") -- cursor right

keymap.set("n", "h", "e") -- moves cursor to end of word

keymap.set("n", "N", "0") -- moves cursor to beginning of line
keymap.set("n", "E", "10j") -- moves cursor down 10 lines (=10e)
keymap.set("n", "U", "10k") -- moves cursor down 10 lines (=10u)
keymap.set("n", "I", "$") -- moves cursor to the end of the line

keymap.set("n", "W", "10w") -- move forward 10 words
keymap.set("n", "B", "10b") -- move backwards 10 words

-- normal mode convenience tricks

keymap.set("n", "<leader>nh", ":nohl<CR>") -- clears search highlights

keymap.set("n", "x", '"_x') -- deletes character without copying to register

keymap.set("n", "<leader>+", "<C-a>") -- increments +1
keymap.set("n", "<leader>-", "<C-x>") -- increments -1

keymap.set("n", "<leader>w", ":w<CR>") -- space + w = save
keymap.set("n", "<leader>wq", ":wq<CR>") -- space + wq = save and quit

-- normal mode windows
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") --split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- normal mode tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab


-- insert mode remaps
keymap.set("i", "hh", "<ESC>") -- h and h to exit insert mode

-- insert mode bracket doublers
keymap.set("i", "(", "()<esc>i")
keymap.set("i", "{", "{}<esc>i")
keymap.set("i", "[", "[]<esc>i")


-- visual mode remaps

keymap.set("v", "n", "h")
keymap.set("v", "e", "j")
keymap.set("v", "u", "k")
keymap.set("v", "i", "l")

--[[
keymap.set("v", "J", "10j")
keymap.set("v", "K", "10k")
--]]

-- plugin keybinds

-- nvim tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggles file explorer

-- telescope 
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags


