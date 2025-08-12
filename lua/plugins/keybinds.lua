return {
  -- Clear highlights on search when pressing <Esc> in normal mode
  --  See `:help hlsearch`
  vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>'),

  -- Diagnostic keymaps
  vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' }),

  -- Exit terminal mode
  vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' }),

  -- Keybinds to make split navigation easier.
  vim.keymap.set('n', '<leader>wd', '<C-w>q', { desc = 'Close window' }),

  vim.keymap.set('n', '<leader>ws', '<C-W>s', { desc = 'Create split' }),
  vim.keymap.set('n', '<leader>wv', '<C-W>v', { desc = 'Create vertical split' }),

  --  Use CTRL+<hjkl> to switch between windows
  --  See `:help wincmd` for a list of all window commands
  -- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' }),
  -- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' }),
  -- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' }),
  -- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' }),

  vim.keymap.set('n', '<C-S-h>', '<C-w>H', { desc = 'Move window to the left' }),
  vim.keymap.set('n', '<C-S-l>', '<C-w>L', { desc = 'Move window to the right' }),
  vim.keymap.set('n', '<C-S-j>', '<C-w>J', { desc = 'Move window to the lower' }),
  vim.keymap.set('n', '<C-S-k>', '<C-w>K', { desc = 'Move window to the upper' }),

  vim.keymap.set('n', '<leader>cl', function()
    require('nvim-python-repl').send_statement_definition()
  end, { desc = 'Send semantic unit to REPL' }),

  vim.keymap.set('v', '<leader>cv', function()
    require('nvim-python-repl').send_visual_to_repl()
  end, { desc = 'Send visual selection to REPL' }),

  vim.keymap.set('n', '<leader>cx', function()
    require('nvim-python-repl').send_buffer_to_repl()
  end, { desc = 'Send entire buffer to REPL' }),

  vim.keymap.set('n', '<leader>cz', function()
    require('nvim-python-repl').toggle_execute()
  end, { desc = 'Automatically execute command in REPL after sent' }),

  vim.keymap.set('n', '<leader>cc', function()
    require('nvim-python-repl').toggle_vertical()
  end, { desc = 'Create REPL in vertical or horizontal split' }),

  vim.keymap.set('n', '<leader>cp', function()
    require('nvim-python-repl').open_repl()
  end, { desc = 'Opens the REPL in a window split' }),
}
