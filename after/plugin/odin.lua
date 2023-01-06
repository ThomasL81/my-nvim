vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*.odin", },
  callback = function(ev)
    vim.o.filetype="odin"
    vim.cmd[[filetype plugin indent on]]
  end
})
