return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
        "jayp0521/mason-null-ls.nvim",
    },
    config = function()
        require("mason-null-ls").setup {
            ensure_installed = {
                "stylua",
                "clang_format",
                "cmake_format",
                "cmake_lint",
                "asmfmt",
                "ruff",
                "prettier",
                "shfmt",
            },
            automatic_installation = true,
        }

        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                require("none-ls.formatting.ruff").with { extra_args = { "--extend-select", "I" } },
                require("none-ls.formatting.ruff_format"),
                null_ls.builtins.formatting.prettier.with { filetypes = { "json", "yaml", "markdown" } },
                null_ls.builtins.formatting.shfmt.with { args = { "-i", "4" } },
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.clang_format,
                null_ls.builtins.formatting.cmake_format,
                null_ls.builtins.diagnostics.cmake_lint,
                null_ls.builtins.formatting.asmfmt,
            },
        })
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
