return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
      {
        "<leader>f",
        function()
          require("conform").format({ async = true, lsp_format = "fallback" })
        end,
        mode = "",
        desc = "[F]ormat buffer",
      },
    },
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        -- -- Disable "format_on_save lsp_fallback" for languages that don't
        -- -- have a well standardized coding style. You can add additional
        -- -- languages here or re-enable it for the disabled ones.
        local disable_filetypes = { jsx = true, tsx = true, c = true, cpp = false }
        if disable_filetypes[vim.bo[bufnr].filetype] then
          return nil
        else
          return {
            timeout_ms = 500,
            lsp_format = "fallback",
          }
        end
      end,
      formatters_by_ft = {
        lua = { "stylua" },
        cpp = { "clang-format" },
        -- Conform can also run multiple formatters sequentially
        python = { "isort" },
        -- You can use 'stop_after_first' to run the first available formatter from the list
        -- javascript = { 'prettier', 'prettierd', stop_after_first = true },
        -- css = { 'prettier', 'prettierd', stop_after_first = true },
        -- html = { 'prettier', 'prettierd', stop_after_first = true },
        -- -- ts = { 'prettier', 'prettierd', stop_after_first = true },
        -- tsx = { 'prettier', 'prettierd', stop_after_first = true },
        -- jsx = {},
        -- java = { 'clang-format' },
        -- sql = { 'sql-formatter' },
      },
      formatters = {
        stylua = {
          prepend_args = { "--indent-type", "Spaces", "--indent-width", "2" },
        },
      },
    },
  },
}
