vim.cmd.set("rnu")
vim.cmd.set("number")
vim.cmd.set("ai")
vim.cmd.set("clipboard+=unnamedplus")
vim.cmd.set("mouse=")
vim.cmd.set("tabstop=4")
vim.cmd.set("shiftwidth=4")


--Now comes a bunch of stuff really just for the color scheme.
require("catppuccin").setup({
	transparent_background = false,
	dim_inactive = {
        	enabled = false, -- dims the background color of inactive window
        	shade = "dark",
        	percentage = 30, -- percentage of the shade to apply to the inactive window
    		},
	show_end_of_buffer = false,
})

vim.cmd.colorscheme("catppuccin-macchiato")
