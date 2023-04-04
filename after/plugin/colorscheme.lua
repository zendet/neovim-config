require('onedarkpro').setup({
	colors = {
		dark = {
			bg = "#101421"
		}
	}
})

function MakeColored(color)
	color = color or "onedark"
	vim.cmd.colorscheme(color)
end

MakeColored()
