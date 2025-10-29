vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Neotree
vim.keymap.set("n", "<leader>n", ":Neotree toggle<CR>")
--vim.keymap.set("n", "<leader>n", ":Neotree focus<CR>")

-- Code runner
vim.keymap.set("n", "<leader>rr", ":RunCode<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>rft", ":RunFile tab<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>crf", ":CRFiletype<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>crp", ":CRProjects<CR>", { noremap = true, silent = false })

-- for refreshing using tmux
vim.keymap.set("n", "<leader>lr", function()
    vim.cmd("LspRestart")
    vim.cmd("e")
end, { desc = "Restart LSP and reload buffer" })

vim.keymap.set("v", "<leader>y", '"+y', {})
