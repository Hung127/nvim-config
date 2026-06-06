return {
    'catppuccin/nvim',
    priority = 1000, -- make priority to the most
    config = function()
        require('catppuccin').setup {
        background = {
          light = 'latte',
          dark = 'mocha',
        },
        color_overrides = {
          mocha = {
            base = '#090d12',
            mantle = '#030508',
            crust = '#010203',
          },
        },
      }

        -- load colorscheme after config
        vim.cmd.colorscheme 'catppuccin'
    end
}
