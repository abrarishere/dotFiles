vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- Keymaps for macros

keymap.set("x", "<leader>wq", ":norm! @", { desc = "Press macro to apply on selected lines" })



keymap.set("n", "n", "nzzzv", { desc = "Move to next search result and center" }) -- move to next search result and center
keymap.set("n", "N", "Nzzzv", { desc = "Move to previous search result and center" }) -- move to previous search result and center
keymap.set("n", "J", "mzJ`z", { desc = "Join lines without moving cursor" }) -- join lines without moving cursor
keymap.set("n", "Y", "y$", { desc = "Yank to end of line" }) -- yank to end of line
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down half page and center" }) -- scroll down half page and center
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up half page and center" }) -- scroll up half page and center

keymap.set("n", ".", "@@", { desc = "Repeat last command" }) -- repeat last command


keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste over selected text without copying it" }) -- paste over selected text



keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set({ "n", "i" }, "jw", "<ESC> <BAR> :w<CR>", { desc = "Exit insert mode and save with jw" })
keymap.set({ "n", "i" }, "jwq", "<ESC> <BAR> :wq<CR>", { desc = "Exit insert mode and save with jw" })



keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab


