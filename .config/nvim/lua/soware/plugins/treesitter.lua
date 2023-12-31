return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            -- A list of parser names, or "all" (the five listed parsers should always be installed)
            ensure_installed = {
                "c",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "luadoc",
                "python",
                "javascript",
                "html",
                "css",
                "json",
                "jsdoc",
                "markdown",
                "markdown_inline",
                "bash",
                "csv",
                "git_config",
                "gitignore",
            },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
            auto_install = false,
            indent = { enable = true },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        })
    end
}
