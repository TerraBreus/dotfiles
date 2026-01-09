vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = 'disgusting built in filefinder' })
local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>e', function()
--  require('telescope.builtin').find_files({
--    find_command = { 'fd', '--max-depth', '1'},
--  })
--end, { desc = 'Find files (depth 1 only)' })

vim.keymap.set('n', '<leader>e', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>f', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

vim.keymap.set('n', '<leader>d', function()
	local is_enabled = vim.diagnostic.is_enabled()
	vim.diagnostic.enable(not is_enabled)
	end
	)

-- Toggle NvimTree from the left.
require("nvim-tree").setup()
vim.keymap.set('n', '<leader>w', ':NvimTreeToggle<CR>')

--Create and cycle through tabs
vim.keymap.set('n', '<leader>n', ':tabnew<CR>')
vim.keymap.set('n', '<leader>z', ':tabp<CR>')
vim.keymap.set('n', '<leader>c', ':tabn<CR>')

--Splitting windows
vim.keymap.set('n', '<leader>s', ':split<CR>')
vim.keymap.set('n', '<leader>v', ':vs<CR>')

--Replace words
vim.keymap.set('n', '<leader>r', ':%s')
