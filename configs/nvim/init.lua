require('settings')
require('plugins')
require('keymappings')
---------- Color Schema ------------
--require('tokyo-night')
require('gruvbox-theme-config')

require('telescope-config')
require('nvim-treesitter-config')
require('bufferline-config')
require('lualine-config')
require('indent-blankline-config')
require('terminal-config')

--------- Comment Code ------------
require('kommentary-config')

------- Config Languge Server -----
require('nvim-cmp-config')
require('lsp.lua-lsp')
require('lsp.php-lsp')
require('lsp.diagnosticls-lsp')
require('lsp.vuels-lsp')
require('lsp.tsserver-lsp')
