-- Jump to the N buffer (by index) according to :ls buffer list
-- where N is NOT the buffer number but the INDEX in such list
-- NOTE: it does not include terminal buffers
local smartbufs = require('nvim-smartbufs')
vim.keymap.set( "n", "<Leader>1", function() smartbufs.goto_buffer(1) end )
vim.keymap.set( "n", "<Leader>2", function() smartbufs.goto_buffer(2) end )
vim.keymap.set( "n", "<Leader>3", function() smartbufs.goto_buffer(3) end )
vim.keymap.set( "n", "<Leader>4", function() smartbufs.goto_buffer(4) end )
vim.keymap.set( "n", "<Leader>5", function() smartbufs.goto_buffer(5) end )
vim.keymap.set( "n", "<Leader>6", function() smartbufs.goto_buffer(6) end )
vim.keymap.set( "n", "<Leader>7", function() smartbufs.goto_buffer(7) end )
vim.keymap.set( "n", "<Leader>8", function() smartbufs.goto_buffer(8) end )
vim.keymap.set( "n", "<Leader>9", function() smartbufs.goto_buffer(9) end )

-- Improved :bnext :bprev behavior (without considering terminal buffers)
vim.keymap.set( "n", "<Leader>]", function() smartbufs.goto_next_buffer() end )
vim.keymap.set( "n", "<Leader>[", function() smartbufs.goto_prev_buffer() end )

-- Open terminal buffer and set it as hidden so it won't get deleted
vim.keymap.set( "n", "<Leader>t1", function() smartbufs.goto_terminal(1) end )
vim.keymap.set( "n", "<Leader>t2", function() smartbufs.goto_terminal(2) end )
vim.keymap.set( "n", "<Leader>t3", function() smartbufs.goto_terminal(3) end )
vim.keymap.set( "n", "<Leader>t4", function() smartbufs.goto_terminal(4) end )

-- Delete current buffer and goes back to the previous one
vim.keymap.set( "n", "<Leader>qq", function() smartbufs.close_current_buffer() end )

-- Delete the N buffer according to :ls buffer list
vim.keymap.set( "n", "<Leader>q1", function() smartbufs.close_buffer(1) end )
vim.keymap.set( "n", "<Leader>q2", function() smartbufs.close_buffer(2) end )
vim.keymap.set( "n", "<Leader>q3", function() smartbufs.close_buffer(3) end )
vim.keymap.set( "n", "<Leader>q4", function() smartbufs.close_buffer(4) end )
vim.keymap.set( "n", "<Leader>q5", function() smartbufs.close_buffer(5) end )
vim.keymap.set( "n", "<Leader>q6", function() smartbufs.close_buffer(6) end )
vim.keymap.set( "n", "<Leader>q7", function() smartbufs.close_buffer(7) end )
vim.keymap.set( "n", "<Leader>q8", function() smartbufs.close_buffer(8) end )
vim.keymap.set( "n", "<Leader>q9", function() smartbufs.close_buffer(9) end )
