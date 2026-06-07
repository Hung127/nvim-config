return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    opts = {
        ensure_installed = {
            "lua",
            "vim",
            "vimdoc",
            "c",
            "cpp",
            "python",
            "javascript",
            "typescript",
            "html",
            "css",
            "json",
            "markdown",
            "markdown_inline",
        },
        highlight = {
            enable = true,
        },
        indent = {
            enable = true,
        },
    },
}
