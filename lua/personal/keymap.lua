-- This file is loaded last

-- Some bindings for getting back to netrw (:Explore)
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)
vim.api.nvim_create_user_command("W", "w | NvimTreeOpen", {})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-j>", "jzz")
vim.keymap.set("n", "<C-k>", "kzz")

vim.keymap.set("n", "J", "mzJ`z")
--keep cursor centered while moving up/down half-screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
--zv opens folds enough to show where your cursor is
--so nzzzv centers cursor on next and opens any folds
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- give a paste that doesn't clobber the paste buffer
vim.keymap.set("x", "<leader>p", "\"_dp")

-- push yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- undotree
vim.keymap.set("n", "<leader>z", vim.cmd.UndotreeToggle)

--vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Enter into replace mode on the word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>\<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("x", "<leader>x", ":lua<CR>", { silent = true })

--vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
