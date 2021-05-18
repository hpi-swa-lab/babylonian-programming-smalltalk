as yet unclassified
correctObjectReferences: existingObjects
	
	| result instVarNumbersAndValues |
	result := self receiver class basicNew.
	instVarNumbersAndValues keysAndValuesDo: [:instVarNumber :value |
		value isBBMockTemplate
			ifTrue: [result instVarAt: instVarNumber put: (existingObjects at: value)]].