vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set('n', 'h', 'i', { noremap = true })
keymap.set('n', 'H', 'I', { noremap = true })

keymap.set('n', 'i', 'k', { noremap = true })
keymap.set('v', 'i', 'k', { noremap = true })
keymap.set('n', 'I', '5k', { noremap = true })
keymap.set('v', 'I', '5k', { noremap = true })
keymap.set('n', 'K', '5j', { noremap = true })
keymap.set('v', 'K', '5j', { noremap = true })
keymap.set('n', 'k', 'j', { noremap = true })
keymap.set('v', 'k', 'j', { noremap = true })
keymap.set('n', 'j', 'h', { noremap = true })
keymap.set('v', 'j', 'h', { noremap = true })

-- map s <nop>
keymap.set('n', 's', '<nop>')

-- map S :w<CR>
keymap.set('n', 'S', ':w<CR>')

-- map Q :q<CR>
keymap.set('n', 'Q', ':q<CR>')

-- map R :source $MYVIMRC<CR>
keymap.set('n', 'R', ':source $MYVIMRC<CR>')


--
-- window management
keymap.set('n', '<leader>v', '<C-w>v')
keymap.set('n', '<leader>h', '<C-w>s')
keymap.set('n', '<leader>e', '<C-w>=')
keymap.set('n', '<leader>x', '<cmd>close<CR>')
