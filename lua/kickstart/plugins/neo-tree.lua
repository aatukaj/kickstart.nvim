-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  -- cmd = 'Neotree',
  opts = {
    filesystem = {
      follow_current_file = { enabled = true },
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
  config = function()
    require('neo-tree').setup {
      vim.keymap.set('n', '<leader>f', '<cmd>Neotree toggle current<CR>', { desc = 'Show file browser' }),
    }
  end,
}
