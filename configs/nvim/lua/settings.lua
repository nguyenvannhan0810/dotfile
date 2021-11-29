vim.opt.number = true;
vim.opt.autoindent = true
vim.opt.title = true
vim.opt.fileencodings = { 'utf8', 'sjis', 'euc-jp', 'latin' }
vim.opt.encoding = 'utf-8'
vim.opt.background = 'dark'
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.listchars = { tab = '→ ', space = '·', nbsp = '␣', trail = '•', eol = '¬', precedes = '«', extends = '»' }
vim.opt.ignorecase = true
vim.opt.list = true
vim.opt.termguicolors = true
vim.opt.shiftwidth=2
vim.opt.tabstop=2


vim.cmd[[syntax on]]
vim.cmd[[set completeopt=menu,menuone,noselect]]

vim.cmd[[autocmd FileType yaml setlocal shiftwidth=2 tabstop=2]]
vim.cmd[[autocmd FileType vue setlocal shiftwidth=2 tabstop=2]]
vim.cmd[[autocmd FileType php setlocal shiftwidth=4 tabstop=4 iskeyword+=$]]
