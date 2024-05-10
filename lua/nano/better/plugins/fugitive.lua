local faces = require "nano.better.palette"(vim.o.background).faces

return {
	fugitiveCount = { link = "Popout" },
	fugitiveHash = { link = "Default" },
	fugitiveHeader = {},
	fugitiveHeading = {
		fg = faces.salient.fg,
		ctermfg = faces.salient.ctermfg,
		bold = true,
	},
	fugitiveHelpHeader = { link = "fugitiveHeader" },
	fugitiveInstruction = { link = "Salient" },
	fugitiveModifier = { link = "Salient" },
	fugitiveStagedHeading = { link = "fugitiveHeading" },
	fugitiveStagedModifier = { link = "Salient" },
	fugitiveStop = { link = "Strong" },
	fugitiveSymbolicRef = { link = "Strong" },
	fugitiveUnstagedHeading = { link = "fugitiveHeading" },
	fugitiveUnstagedModifier = { link = "Salient" },
	fugitiveUntrackedHeading = { link = "fugitiveHeading" },
	fugitiveUntrackedModifier = { link = "Salient" },
}
