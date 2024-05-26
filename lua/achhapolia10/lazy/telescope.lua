return {
  "nvim-telescope/telescope.nvim",

  tag = "0.1.5",

  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'nvim-telescope/telescope-ui-select.nvim' },
  },

  config = function()
    require('telescope').setup({})

    local builtin = require('telescope.builtin')
    require('telescope.mappings')

    require('telescope').load_extension('fzf')
    require('telescope').load_extension('ui-select')

    vim.keymap.set('n', '<leader>pf', builtin.git_files, {})
    vim.keymap.set('n', '<C-p>', builtin.find_files, {})
    vim.keymap.set('n', '<leader>pws', function()
      local word = vim.fn.expand("<cword>")
      builtin.grep_string({ search = word })
    end)
    vim.keymap.set('n', '<leader>pWs', function()
      local word = vim.fn.expand("<cWORD>")
      builtin.grep_string({ search = word })
    end)
    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end)
    vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})


    vim.keymap.set('n', '<leader>pgs', builtin.git_status, { desc = "[P]roject [G]it [S]tatus" })
    vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})
    vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = "[S]earch [K]eymaps" })
    vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
    vim.keymap.set('n', '<leader>sc', builtin.git_commits, { desc = "[S]earch [C]ommits" })
    vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = "[P]roject [S]earch [S]tring" })
    vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = "[S]earch [B]uffers" })
    vim.keymap.set('n', '<leader>sf', builtin.live_grep, { desc = "[P]roject [S]earch [S]tring" })
  end
}
