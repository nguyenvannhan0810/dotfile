require('kommentary.config').use_extended_mappings(
  vim.api.nvim_set_keymap("n", "<leader>cic", "<Plug>kommentary_line_increase", {}),
  vim.api.nvim_set_keymap("n", "<leader>ci", "<Plug>kommentary_motion_increase", {}),
  vim.api.nvim_set_keymap("x", "<leader>ci", "<Plug>kommentary_visual_increase", {}),
  vim.api.nvim_set_keymap("n", "<leader>cdc", "<Plug>kommentary_line_decrease", {}),
  vim.api.nvim_set_keymap("n", "<leader>cd", "<Plug>kommentary_motion_decrease", {}),
  vim.api.nvim_set_keymap("x", "<leader>cd", "<Plug>kommentary_visual_decrease", {}),

  vim.api.nvim_set_keymap("n", "<leader>c", "<Plug>kommentary_line_default", {}),
  vim.api.nvim_set_keymap("n", "<leader>cc", "<Plug>kommentary_motion_default", {}),
  vim.api.nvim_set_keymap("x", "<leader>c", "<Plug>kommentary_visual_default", {}),

  require('kommentary.config').configure_language("blade", {
    multi_line_comment_strings = {"{{--", "--}}"},
    prefer_multi_line_comments = true,
  })
)
