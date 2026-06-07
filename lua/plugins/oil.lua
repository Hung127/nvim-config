return {
  {
    "stevearc/oil.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
    opts = {
      default_file_explorer = true,
      view_options = {
        show_hidden = false,
        is_hidden_file = function(name, bufnr)
          -- Hide __pycache__ and standard hidden files (starting with a dot)
          return vim.startswith(name, ".") or name == "__pycache__"
        end,
      },
    },
    keys = {
      {
        "-",
        "<CMD>Oil<CR>",
        desc = "Open Oil",
      },
    },
  },
}
