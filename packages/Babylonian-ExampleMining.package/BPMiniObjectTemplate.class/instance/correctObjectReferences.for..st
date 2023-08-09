object creation
correctObjectReferences: existingObjects for: aMiniObject

	instVarNumbersAndValues keysAndValuesDo: [:instVarNumber :value |
		aMiniObject instVarAt: instVarNumber put: (existingObjects at: value)].
	^ aMiniObject