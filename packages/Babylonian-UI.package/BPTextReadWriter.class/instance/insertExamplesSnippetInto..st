writing
insertExamplesSnippetInto: aString
	^ (examplesSourceSection isEmptyOrNil not and: [aString includes: Character return])
		ifTrue: [ | result crIndex|
			crIndex := aString indexOf: Character return.
			self flag: #todo. "handle oneliner string without cr "
			result := aString 
				copyReplaceFrom: crIndex
				to: crIndex
				with: Character return asString , Character tab , examplesSourceSection , Character return.
			examplesSourceSection := nil.
			result]
		ifFalse: [aString]