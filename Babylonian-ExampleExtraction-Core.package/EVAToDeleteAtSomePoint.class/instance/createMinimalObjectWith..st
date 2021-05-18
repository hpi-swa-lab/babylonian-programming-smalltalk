as yet unclassified
createMinimalObjectWith: alreadyCreatedMockObjects
	
	| result instVarNumbersAndValues receiver |
	result := receiver class basicNew.
	instVarNumbersAndValues keysAndValuesDo: [:instVarNumber :value |
		value isBBMockTemplate
			ifTrue: [ | valueMock |
				valueMock := alreadyCreatedMockObjects at: value ifAbsentPut: [value createMinimalObjectWith: alreadyCreatedMockObjects].
				result instVarAt: instVarNumber put: valueMock]
			ifFalse: [result instVarAt: instVarNumber put: value]].
	^ result
		
	"Directly convert mockObjects or make mocks with mock references first und secondly fix the references?"