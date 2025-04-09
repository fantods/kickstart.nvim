return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'frappe',
        background = { -- :h background
          light = 'frappe',
          dark = 'frappe',
        },
      }
      vim.cmd.colorscheme 'catppuccin'
    end,
  },

  -- Uncomment to use TokyoNight instead
  -- {
  --   'folke/tokyonight.nvim',
  --   priority = 1000,
  --   config = function()
  --     require('tokyonight').setup {
  --       styles = {
  --         comments = { italic = false },
  --       },
  --     }
  --     vim.cmd.colorscheme 'tokyonight-night'
  --   end,
  -- },
} 