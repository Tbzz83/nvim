require("azeezoe")

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set signcolumn=yes")
vim.wo.relativenumber = true
vim.g.editorconfig = false

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- for refreshing using tmux
vim.keymap.set("n", "<leader>lr", function()
    vim.cmd("LspRestart")
    vim.cmd("e")
end, { desc = "Restart LSP and reload buffer" })

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opts = {}

-- Setup lazy.nvim
require("lazy").setup("plugins")

-- Theme
vim.opt.background = "dark"

--require("noctishc").setup()
--require("catppuccin").setup()
--vim.cmd.colorscheme "catppuccin"

require("neo-tree").setup({
    event_handlers = {

        {
            event = "file_open_requested",
            handler = function()
                -- auto close
                -- vim.cmd("Neotree close")
                -- OR
                require("neo-tree.command").execute({ action = "close" })
            end,
        },
    },
})
