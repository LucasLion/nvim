local neoscroll = require('neoscroll')
local keymap = {
  ["<C-u>"] = function() neoscroll.ctrl_u({ duration = 150 }) end,
  ["<C-d>"] = function() neoscroll.ctrl_d({ duration = 150 }) end,
  ["<C-b>"] = function() neoscroll.ctrl_b({ duration = 350 }) end,
  ["<C-f>"] = function() neoscroll.ctrl_f({ duration = 350 }) end,
  ["<C-y>"] = function() neoscroll.scroll(-0.1, { move_cursor=false, duration = 100 }) end,
  ["<C-e>"] = function() neoscroll.scroll(0.1, { move_cursor=false, duration = 100 }) end,
  ["zt"]    = function() neoscroll.zt({ half_win_duration = 250 }) end,
  ["zz"]    = function() neoscroll.zz({ half_win_duration = 250 }) end,
  ["zb"]    = function() neoscroll.zb({ half_win_duration = 250 }) end,
}
local modes = { 'n', 'v', 'x' }

neoscroll.setup({
  mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>', '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
  hide_cursor = true,
  stop_eof = true,
  respect_scrolloff = false,
  cursor_scrolls_alone = true,
  easing_function = nil,
  pre_hook = nil,
  post_hook = nil,
  performance_mode = false,
})

for key, func in pairs(keymap) do
  vim.keymap.set(modes, key, func)
end
