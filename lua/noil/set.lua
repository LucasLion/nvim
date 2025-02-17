vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.g.mapleader = " "

vim.cmd [[
    augroup FileTypeSettings
        autocmd!
        autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab
        autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 expandtab
		autocmd FileType typescript setlocal tabstop=2 shiftwidth=2 expandtab
		autocmd FileType typescriptreact setlocal tabstop=2 shiftwidth=2 expandtab
        autocmd FileType dart setlocal tabstop=2 shiftwidth=2 expandtab
        autocmd FileType html setlocal tabstop=2 shiftwidth=2 expandtab
        autocmd FileType css setlocal tabstop=2 shiftwidth=2 expandtab
        autocmd FileType tpl setlocal tabstop=2 shiftwidth=2 expandtab
        autocmd FileType js setlocal tabstop=2 shiftwidth=2 expandtab
		autocmd FileType json setlocal tabstop=2 shiftwidth=2 expandtab
		autocmd FileType php setlocal tabstop=4 shiftwidth=4 expandtab	
    augroup END
]]
