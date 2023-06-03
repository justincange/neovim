--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jk', '<Esc>', {})
map('n', '<c-n>', [[:NvimTreeToggle]], {})
map('n', '<c-i>', [[gcc]], {})
map('n', '<c-S-i>', [[gbc]], {})


