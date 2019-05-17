replacing
replace: originalCode with: replacementCode for: exampleName 

	^ self example exampleName = exampleName
 		ifTrue: replacementCode
		ifFalse: originalCode