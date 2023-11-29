function readAll(file)
    local f = assert(io.open(file, "rb"))
    local content = f:read("*all")
    f:close()
    return content
end

vim.go.tgc = true
vim.wo.nu = true
vim.wo.rnu = true
vim.cmd(readAll(os.getenv("HOME") .. "/.vimrc"))
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.keymap.set('n', 'K', vim.lsp.buf.hover)
vim.keymap.set('n', 'D', vim.diagnostic.open_float)

require"lazy".setup(require"plugins", opts)
vim.cmd"colo catppuccin"
