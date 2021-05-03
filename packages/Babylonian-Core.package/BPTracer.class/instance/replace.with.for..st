replacing
replace: originalCode with: replacementCode for: exampleName
	


	^ ((self exampleNameMatches: exampleName) or: [exampleName = BPReplacement allExamplesName])
 		ifTrue: replacementCode
		ifFalse: (self wrapUserCode: originalCode)