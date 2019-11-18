replacing
replace: originalCode with: replacementCode for: exampleName 

	^ (self example uniqueIdentifier = exampleName or: [exampleName = BPReplacement allExamplesName])
 		ifTrue: replacementCode
		ifFalse: originalCode