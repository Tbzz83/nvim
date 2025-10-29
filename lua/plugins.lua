local opts = {}

return {
    { "iagorrr/noctishc.nvim" },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
    {
        "Shatur/neovim-ayu",
        name = "ayu",
        priority = 1000,
        config = function()
            require("ayu").setup({
                mirage = true,
            })
        end,
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
    {
        "polirritmico/monokai-nightasty.nvim",
        lazy = false,
        priority = 1000,
    },
    -- using lazy.nvim
    { "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        lazy = false,
        opts = {},
    },
    {
        "navarasu/onedark.nvim",
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require("onedark").setup({
                style = "darker",
            })
            -- Enable theme
            require("onedark").load()
        end,
    },
    { "rebelot/kanagawa.nvim" },
    {
        "Tsuzat/NeoSolarized.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            vim.cmd([[ colorscheme NeoSolarized ]])
        end,
    },
    {
        "s1n7ax/nvim-window-picker",
        name = "window-picker",
        event = "VeryLazy",
        version = "2.*",
        config = function()
            require("window-picker").setup()
        end,
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
    {
        "rose-pine/neovim",
        config = function()
            require("rose-pine").setup({
                styles = {
                    italic = false,
                },
            })
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "lua", "vim", "bash", "python", "json" }, -- add more as needed
                highlight = { enable = true },
                indent = { enable = true },
            })
        end,
    },
}
