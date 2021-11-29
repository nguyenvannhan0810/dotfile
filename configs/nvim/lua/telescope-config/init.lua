local actions = require('telescope.actions')

vim.api.nvim_set_keymap('n', ';f', ':lua require(\'telescope.builtin\').find_files()<CR>', { noremap = true, silent = true }) 
vim.api.nvim_set_keymap('n', ';r', ':lua require(\'telescope.builtin\').live_grep()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ';\\', ':lua require(\'telescope.builtin\').buffers()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ';;', ':lua require(\'telescope.builtin\').help_tags()<CR>', { noremap = true, silent = true })

require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
        ["<esc>"] = actions.close,
        ["<CR>"] = actions.select_default + actions.center
      },
      n = {
	["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
      }
    },

    file_ignore_patterns = { 'node_modules', '.git', '.vscode', '.idea', 'vendor' }
  },
}
