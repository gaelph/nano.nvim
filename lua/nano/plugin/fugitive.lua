-- fugitive highlights
local lush = require "lush"
return function(variant)
	local base = require "nano.base"(variant)

	return lush(function()
		return {
			fugitiveHeader { base.Label },
			fugitiveHelpHeader { fugitiveHeader },
			-- fugitiveHelpTag { Tag },
			fugitiveHeading { base.Salient, gui = "bold" },
			fugitiveUntrackedHeading { fugitiveHeading },
			fugitiveUnstagedHeading { fugitiveHeading },
			fugitiveStagedHeading { fugitiveHeading },
			fugitiveModifier { base.Salient },
			fugitiveUntrackedModifier { base.Salient },
			fugitiveUnstagedModifier { base.Salient },
			fugitiveStagedModifier { base.Salient },
			fugitiveInstruction { base.Salient },
			fugitiveStop { base.Strong },
			fugitiveHash { base.Default },
			fugitiveSymbolicRef { base.Strong },
			fugitiveCount { base.Popout },
		}
	end)
end
