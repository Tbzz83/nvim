return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
--                    "lua_ls",
--                    "htmx",
--                    "emmet_ls",
--                    "gopls",
--                    "rust_analyzer",
--                    "html",
--                    "clangd",
--                    "terraformls",
--                    "bashls",
--                    "jdtls",
--                    "pyright",
--                    "typescript_language_server",
--                    "omnisharp",
                    }
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.config('html', {
                filetypes = { "html", "css", "javascript", "typescript", "javascriptreact", "typescriptreact" },
            })
            vim.lsp.enable('html')
            --      vim.lsp.config('lua_ls', {})
            --      vim.lsp.config('clangd', {})
            --      lspconfig.basedpyright.setup({})
            --      lspconfig.terraformls.setup({})
            --      lspconfig.bashls.setup({})
            --      lspconfig.gopls.setup({})
            --      lspconfig.ansiblels.setup({})
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, {})
            vim.diagnostic.config({ virtual_text = true }) -- This is the warning message text
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

            vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
                pattern = { "*.tf", "*.tfvars" },
                command = "set filetype=terraform",
            })
        end,
    },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                sources = {
                    { name = "nvim_lsp" },
                },
                mapping = cmp.mapping.preset.insert({
                    -- Navigate between completion items
                    ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = "select" }),
                    ["<C-j>"] = cmp.mapping.select_next_item({ behavior = "select" }),

                    -- `Enter` key to confirm completion
                    ["<CR>"] = cmp.mapping.confirm({ select = false }),

                    -- Ctrl+Space to trigger completion menu
                    ["<C-Space>"] = cmp.mapping.complete(),

                    -- Scroll up and down in the completion documentation
                    ["<C-u>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-d>"] = cmp.mapping.scroll_docs(4),
                }),
                snippet = {
                    expand = function(args)
                        vim.snippet.expand(args.body)
                    end,
                },
            })
        end,
    },
    {
        "hrsh7th/cmp-nvim-lsp",
    },
}
