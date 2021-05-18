object creation
correctObjectReferences: existingObjects for: aMiniObject
	
	instVarNumbersAndValues keysAndValuesDo: [:instVarNumber :value |
		value isBBMockTemplate
			ifTrue: [aMiniObject instVarAt: instVarNumber put: (existingObjects at: value)]].
	^ aMiniObject