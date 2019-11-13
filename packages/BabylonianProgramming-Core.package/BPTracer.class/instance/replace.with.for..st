replacing
replace: originalCode with: replacementCode for: exampleName 

	^ (self example exampleName = exampleName or: [exampleName = BPReplacement allExamplesName])
 		ifTrue: replacementCode
		ifFalse: originalCode