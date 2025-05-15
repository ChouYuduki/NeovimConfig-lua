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

-- split and move
keymap.set('n', 'sl', ':set splitright<CR>:vsplit<CR>')
keymap.set('n', 'sj', ':set nosplitright<CR>:vsplit<CR>')
keymap.set('n', 'si', ':set nosplitbelow<CR>:split<CR>')
keymap.set('n', 'sk', ':set splitbelow<CR>:split<CR>')

-- switch window
keymap.set('n', '<leader>l', '<C-w>l')
keymap.set('n', '<leader>i', '<C-w>k')
keymap.set('n', '<leader>j', '<C-w>h')
keymap.set('n', '<leader>k', '<C-w>j')

-- change window size
keymap.set('n', '<down>', ':res +5<CR>')
keymap.set('n', '<up>', ':res -5<CR>')
keymap.set('n', '<right>', ':vertical resize-5<CR>')
keymap.set('n', '<left>', ':vertical resize+5<CR>')


-- close window
keymap.set('n', '<leader>x', '<cmd>close<CR>')



