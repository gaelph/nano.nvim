return function(variant)
	if variant == "light" then
		return {
			AvanteConflictCurrent = { bg = "#E3E8E3" },
			AvanteConflictIncoming = { bg = "#DDDAE2" },
			AvanteConflictCurrentLabel = { bg = "#E3E8E3" },
			AvanteConflictIncomingLabel = { bg = "#DDDAE2" },
			AvanteToBeDeletedWOStrikethrough = {
				fg = "#5D5246",
				bg = "#E7DCD5",
				strikethrough = true,
			},
		}
	end

	return {
		AvanteConflictCurrentLabel = { bg = "#455254" },
		AvanteConflictIncomingLabel = { bg = "#3D495C" },
		AvanteConflictCurrent = { bg = "#455254" },
		AvanteConflictIncoming = { bg = "#3D495C" },
		AvanteToBeDeletedWOStrikethrough = {
			fg = "#D3D0DC",
			bg = "#504653",
			strikethrough = true,
		},
	}
end
