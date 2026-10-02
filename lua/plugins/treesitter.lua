return {
  { -- Highlight, edit, and navigate code
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    -- This plugin cannot be lazy-loaded: parsers land in `install_dir`, which
    -- only reaches 'runtimepath' once setup() has run.
    lazy = false,
    opts = {
      -- NOTE: pinned to the `main` branch (2025 rewrite). setup() accepts ONLY
      -- install_dir -- ensure_installed / auto_install / highlight.enable /
      -- indent.enable no longer exist on this branch.
      install_dir = vim.fs.joinpath(vim.fn.stdpath("data"), "site"),
    },
    config = function(_, opts)
      local ts = require("nvim-treesitter")
      ts.setup(opts)

      -- Single source of truth, shared by install() and the FileType autocmd.
      local langs = {
        "bash",
        "c",
        "cpp",
        "diff",
        "html",
        "kotlin",
        "lua",
        "luadoc",
        "markdown",
        "markdown_inline",
        "query",
        "vim",
        "vimdoc",
      }

      -- Downloads + compiles parsers. Async, no-op once installed.
      vim.schedule(function()
        ts.install(langs)
      end)

      -- Highlighting and indentation are per-filetype opt-ins on this branch.
      vim.api.nvim_create_autocmd("FileType", {
        group = vim.api.nvim_create_augroup("treesitter-filetypes", { clear = true }),
        pattern = langs,
        callback = function(args)
          -- Parsers install asynchronously, so on the very first launch this
          -- filetype's parser may not exist yet and start() throws. Next          -- session picks it up.
          pcall(vim.treesitter.start, args.buf)
          vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  },
}
