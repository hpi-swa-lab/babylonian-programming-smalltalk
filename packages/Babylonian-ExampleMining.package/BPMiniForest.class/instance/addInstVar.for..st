record mock
addInstVar: instVarNumber for: anObject

	objectTemplateMapping
		at: anObject
		ifPresent: [:template | template tryToAddInstVarNumber: instVarNumber]